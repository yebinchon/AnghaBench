
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tscs454 {int sysclk_src_id; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int FM_PLLCTL_PLLISEL ;
 unsigned int FV_PLLISEL_BCLK ;
 unsigned int FV_PLLISEL_MCLK1 ;
 unsigned int FV_PLLISEL_MCLK2 ;
 unsigned int FV_PLLISEL_XTAL ;




 int R_PLLCTL ;
 int dev_err (int ,char*,int) ;
 int set_sysclk (struct snd_soc_component*) ;
 struct tscs454* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int tscs454_probe(struct snd_soc_component *component)
{
 struct tscs454 *tscs454 = snd_soc_component_get_drvdata(component);
 unsigned int val;
 int ret = 0;

 switch (tscs454->sysclk_src_id) {
 case 128:
  val = FV_PLLISEL_XTAL;
  break;
 case 130:
  val = FV_PLLISEL_MCLK1;
  break;
 case 129:
  val = FV_PLLISEL_MCLK2;
  break;
 case 131:
  val = FV_PLLISEL_BCLK;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Invalid sysclk src id (%d)\n", ret);
  return ret;
 }

 ret = snd_soc_component_update_bits(component, R_PLLCTL,
   FM_PLLCTL_PLLISEL, val);
 if (ret < 0) {
  dev_err(component->dev, "Failed to set PLL input (%d)\n", ret);
  return ret;
 }

 if (tscs454->sysclk_src_id < 131)
  ret = set_sysclk(component);

 return ret;
}
