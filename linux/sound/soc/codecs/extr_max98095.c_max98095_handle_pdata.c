
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dev; } ;
struct max98095_priv {struct max98095_pdata* pdata; } ;
struct max98095_pdata {scalar_t__ bq_cfgcnt; scalar_t__ eq_cfgcnt; scalar_t__ digmic_right_mode; scalar_t__ digmic_left_mode; } ;


 int M98095_087_CFG_MIC ;
 int M98095_DIGMIC_L ;
 int M98095_DIGMIC_R ;
 int dev_dbg (int ,char*) ;
 int max98095_handle_bq_pdata (struct snd_soc_component*) ;
 int max98095_handle_eq_pdata (struct snd_soc_component*) ;
 struct max98095_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static void max98095_handle_pdata(struct snd_soc_component *component)
{
 struct max98095_priv *max98095 = snd_soc_component_get_drvdata(component);
 struct max98095_pdata *pdata = max98095->pdata;
 u8 regval = 0;

 if (!pdata) {
  dev_dbg(component->dev, "No platform data\n");
  return;
 }


 if (pdata->digmic_left_mode)
  regval |= M98095_DIGMIC_L;

 if (pdata->digmic_right_mode)
  regval |= M98095_DIGMIC_R;

 snd_soc_component_write(component, M98095_087_CFG_MIC, regval);


 if (pdata->eq_cfgcnt)
  max98095_handle_eq_pdata(component);


 if (pdata->bq_cfgcnt)
  max98095_handle_bq_pdata(component);
}
