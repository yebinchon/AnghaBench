
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_component {int dev; } ;
struct TYPE_4__ {int name; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_5__ {unsigned int* item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct max98095_priv {int lock; int * eq_texts; struct max98095_cdata* dai; int eq_textcnt; struct max98095_pdata* pdata; } ;
struct max98095_pdata {unsigned int eq_cfgcnt; struct max98095_eq_cfg* eq_cfg; } ;
struct max98095_eq_cfg {int band5; int band4; int band3; int band2; int band1; scalar_t__ rate; int name; } ;
struct max98095_cdata {unsigned int eq_sel; int rate; } ;


 int EINVAL ;
 int INT_MAX ;
 int M98095_00F_HOST_CFG ;
 int M98095_088_CFG_LEVEL ;
 int M98095_EQ1EN ;
 int M98095_EQ2EN ;
 int M98095_SEG ;
 scalar_t__ WARN_ON (int) ;
 int abs (scalar_t__) ;
 int dev_dbg (int ,char*,int ,scalar_t__,int) ;
 int m98095_eq_band (struct snd_soc_component*,int,int,int ) ;
 int max98095_get_eq_channel (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct max98095_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int max98095_put_eq_enum(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct max98095_priv *max98095 = snd_soc_component_get_drvdata(component);
 struct max98095_pdata *pdata = max98095->pdata;
 int channel = max98095_get_eq_channel(kcontrol->id.name);
 struct max98095_cdata *cdata;
 unsigned int sel = ucontrol->value.enumerated.item[0];
 struct max98095_eq_cfg *coef_set;
 int fs, best, best_val, i;
 int regmask, regsave;

 if (WARN_ON(channel > 1))
  return -EINVAL;

 if (!pdata || !max98095->eq_textcnt)
  return 0;

 if (sel >= pdata->eq_cfgcnt)
  return -EINVAL;

 cdata = &max98095->dai[channel];
 cdata->eq_sel = sel;
 fs = cdata->rate;


 best = 0;
 best_val = INT_MAX;
 for (i = 0; i < pdata->eq_cfgcnt; i++) {
  if (strcmp(pdata->eq_cfg[i].name, max98095->eq_texts[sel]) == 0 &&
   abs(pdata->eq_cfg[i].rate - fs) < best_val) {
   best = i;
   best_val = abs(pdata->eq_cfg[i].rate - fs);
  }
 }

 dev_dbg(component->dev, "Selected %s/%dHz for %dHz sample rate\n",
  pdata->eq_cfg[best].name,
  pdata->eq_cfg[best].rate, fs);

 coef_set = &pdata->eq_cfg[best];

 regmask = (channel == 0) ? M98095_EQ1EN : M98095_EQ2EN;


 regsave = snd_soc_component_read32(component, M98095_088_CFG_LEVEL);
 snd_soc_component_update_bits(component, M98095_088_CFG_LEVEL, regmask, 0);

 mutex_lock(&max98095->lock);
 snd_soc_component_update_bits(component, M98095_00F_HOST_CFG, M98095_SEG, M98095_SEG);
 m98095_eq_band(component, channel, 0, coef_set->band1);
 m98095_eq_band(component, channel, 1, coef_set->band2);
 m98095_eq_band(component, channel, 2, coef_set->band3);
 m98095_eq_band(component, channel, 3, coef_set->band4);
 m98095_eq_band(component, channel, 4, coef_set->band5);
 snd_soc_component_update_bits(component, M98095_00F_HOST_CFG, M98095_SEG, 0);
 mutex_unlock(&max98095->lock);


 snd_soc_component_update_bits(component, M98095_088_CFG_LEVEL, regmask, regsave);
 return 0;
}
