
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct max98088_priv {int * eq_texts; int eq_textcnt; struct max98088_cdata* dai; struct max98088_pdata* pdata; } ;
struct max98088_pdata {int eq_cfgcnt; struct max98088_eq_cfg* eq_cfg; } ;
struct max98088_eq_cfg {int band5; int band4; int band3; int band2; int band1; scalar_t__ rate; int name; } ;
struct max98088_cdata {int rate; int eq_sel; } ;


 int INT_MAX ;
 int M98088_EQ2EN ;
 int M98088_REG_49_CFG_LEVEL ;
 int abs (scalar_t__) ;
 int dev_dbg (int ,char*,int ,scalar_t__,int) ;
 int m98088_eq_band (struct snd_soc_component*,int,int,int ) ;
 struct max98088_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void max98088_setup_eq2(struct snd_soc_component *component)
{
       struct max98088_priv *max98088 = snd_soc_component_get_drvdata(component);
       struct max98088_pdata *pdata = max98088->pdata;
       struct max98088_eq_cfg *coef_set;
       int best, best_val, save, i, sel, fs;
       struct max98088_cdata *cdata;

       cdata = &max98088->dai[1];

       if (!pdata || !max98088->eq_textcnt)
               return;


       fs = cdata->rate;

       sel = cdata->eq_sel;
       best = 0;
       best_val = INT_MAX;
       for (i = 0; i < pdata->eq_cfgcnt; i++) {
               if (strcmp(pdata->eq_cfg[i].name, max98088->eq_texts[sel]) == 0 &&
                   abs(pdata->eq_cfg[i].rate - fs) < best_val) {
                       best = i;
                       best_val = abs(pdata->eq_cfg[i].rate - fs);
               }
       }

       dev_dbg(component->dev, "Selected %s/%dHz for %dHz sample rate\n",
               pdata->eq_cfg[best].name,
               pdata->eq_cfg[best].rate, fs);


       save = snd_soc_component_read32(component, M98088_REG_49_CFG_LEVEL);
       snd_soc_component_update_bits(component, M98088_REG_49_CFG_LEVEL, M98088_EQ2EN, 0);

       coef_set = &pdata->eq_cfg[sel];

       m98088_eq_band(component, 1, 0, coef_set->band1);
       m98088_eq_band(component, 1, 1, coef_set->band2);
       m98088_eq_band(component, 1, 2, coef_set->band3);
       m98088_eq_band(component, 1, 3, coef_set->band4);
       m98088_eq_band(component, 1, 4, coef_set->band5);


       snd_soc_component_update_bits(component, M98088_REG_49_CFG_LEVEL, M98088_EQ2EN,
               save);
}
