
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dev; } ;
struct max98088_priv {int digmic; struct max98088_pdata* pdata; } ;
struct max98088_pdata {scalar_t__ eq_cfgcnt; scalar_t__ receiver_mode; scalar_t__ digmic_right_mode; scalar_t__ digmic_left_mode; } ;


 int M98088_DIGMIC_L ;
 int M98088_DIGMIC_R ;
 int M98088_REC_LINEMODE ;
 int M98088_REC_LINEMODE_MASK ;
 int M98088_REG_2A_MIC_REC_CNTL ;
 int M98088_REG_48_CFG_MIC ;
 int dev_dbg (int ,char*) ;
 int max98088_handle_eq_pdata (struct snd_soc_component*) ;
 struct max98088_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static void max98088_handle_pdata(struct snd_soc_component *component)
{
       struct max98088_priv *max98088 = snd_soc_component_get_drvdata(component);
       struct max98088_pdata *pdata = max98088->pdata;
       u8 regval = 0;

       if (!pdata) {
               dev_dbg(component->dev, "No platform data\n");
               return;
       }


       if (pdata->digmic_left_mode)
               regval |= M98088_DIGMIC_L;

       if (pdata->digmic_right_mode)
               regval |= M98088_DIGMIC_R;

       max98088->digmic = (regval ? 1 : 0);

       snd_soc_component_write(component, M98088_REG_48_CFG_MIC, regval);


       regval = ((pdata->receiver_mode) ? M98088_REC_LINEMODE : 0);
       snd_soc_component_update_bits(component, M98088_REG_2A_MIC_REC_CNTL,
               M98088_REC_LINEMODE_MASK, regval);


       if (pdata->eq_cfgcnt)
               max98088_handle_eq_pdata(component);
}
