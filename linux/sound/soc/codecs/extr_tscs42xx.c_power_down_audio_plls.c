
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tscs42xx {int pll_lock; } ;
struct snd_soc_component {int dev; } ;


 int RM_PLLCTL1C_PDB_PLL1 ;
 int RM_PLLCTL1C_PDB_PLL2 ;
 int RV_PLLCTL1C_PDB_PLL1_DISABLE ;
 int RV_PLLCTL1C_PDB_PLL2_DISABLE ;
 int R_PLLCTL1C ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tscs42xx* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int power_down_audio_plls(struct snd_soc_component *component)
{
 struct tscs42xx *tscs42xx = snd_soc_component_get_drvdata(component);
 int ret;

 mutex_lock(&tscs42xx->pll_lock);

 ret = snd_soc_component_update_bits(component, R_PLLCTL1C,
   RM_PLLCTL1C_PDB_PLL1,
   RV_PLLCTL1C_PDB_PLL1_DISABLE);
 if (ret < 0) {
  dev_err(component->dev, "Failed to turn PLL off (%d)\n", ret);
  goto exit;
 }
 ret = snd_soc_component_update_bits(component, R_PLLCTL1C,
   RM_PLLCTL1C_PDB_PLL2,
   RV_PLLCTL1C_PDB_PLL2_DISABLE);
 if (ret < 0) {
  dev_err(component->dev, "Failed to turn PLL off (%d)\n", ret);
  goto exit;
 }

 ret = 0;
exit:
 mutex_unlock(&tscs42xx->pll_lock);

 return ret;
}
