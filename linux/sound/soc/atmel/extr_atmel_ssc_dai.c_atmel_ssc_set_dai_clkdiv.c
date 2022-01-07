
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct platform_device {size_t id; } ;
struct atmel_ssc_info {int dir_mask; int cmr_div; int tcmr_period; int rcmr_period; int forced_divider; } ;





 int BIT (int const) ;
 int EBUSY ;
 int EINVAL ;
 int SSC_DIR_MASK_CAPTURE ;
 int SSC_DIR_MASK_PLAYBACK ;
 struct atmel_ssc_info* ssc_info ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static int atmel_ssc_set_dai_clkdiv(struct snd_soc_dai *cpu_dai,
 int div_id, int div)
{
 struct platform_device *pdev = to_platform_device(cpu_dai->dev);
 struct atmel_ssc_info *ssc_p = &ssc_info[pdev->id];

 switch (div_id) {
 case 130:





  if (ssc_p->dir_mask !=
   (SSC_DIR_MASK_PLAYBACK | SSC_DIR_MASK_CAPTURE))
   ssc_p->cmr_div = div;
  else if (ssc_p->cmr_div == 0)
   ssc_p->cmr_div = div;
  else
   if (div != ssc_p->cmr_div)
    return -EBUSY;
  ssc_p->forced_divider |= BIT(130);
  break;

 case 128:
  ssc_p->tcmr_period = div;
  ssc_p->forced_divider |= BIT(128);
  break;

 case 129:
  ssc_p->rcmr_period = div;
  ssc_p->forced_divider |= BIT(129);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
