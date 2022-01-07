
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dev; } ;


 int WCD9335_ANA_AMIC1 ;
 int WCD9335_ANA_AMIC3 ;
 int WCD9335_ANA_AMIC5 ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static u16 wcd9335_codec_get_amic_pwlvl_reg(struct snd_soc_component *comp,
         int amic)
{
 u16 pwr_level_reg = 0;

 switch (amic) {
 case 1:
 case 2:
  pwr_level_reg = WCD9335_ANA_AMIC1;
  break;

 case 3:
 case 4:
  pwr_level_reg = WCD9335_ANA_AMIC3;
  break;

 case 5:
 case 6:
  pwr_level_reg = WCD9335_ANA_AMIC5;
  break;
 default:
  dev_err(comp->dev, "invalid amic: %d\n", amic);
  break;
 }

 return pwr_level_reg;
}
