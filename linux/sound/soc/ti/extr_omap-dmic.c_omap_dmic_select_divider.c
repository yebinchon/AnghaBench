
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dmic {int fclk_freq; int out_freq; int dev; } ;


 int EINVAL ;
 int dev_err (int ,char*,...) ;

__attribute__((used)) static int omap_dmic_select_divider(struct omap_dmic *dmic, int sample_rate)
{
 int divider = -EINVAL;





 if (sample_rate == 192000) {
  if (dmic->fclk_freq == 19200000 && dmic->out_freq == 3840000)
   divider = 0x6;
  else
   dev_err(dmic->dev,
    "invalid clock configuration for 192KHz\n");

  return divider;
 }

 switch (dmic->out_freq) {
 case 1536000:
  if (dmic->fclk_freq != 24576000)
   goto div_err;
  divider = 0x4;
  break;
 case 2400000:
  switch (dmic->fclk_freq) {
  case 12000000:
   divider = 0x5;
   break;
  case 19200000:
   divider = 0x0;
   break;
  case 24000000:
   divider = 0x2;
   break;
  default:
   goto div_err;
  }
  break;
 case 3072000:
  if (dmic->fclk_freq != 24576000)
   goto div_err;
  divider = 0x3;
  break;
 case 3840000:
  if (dmic->fclk_freq != 19200000)
   goto div_err;
  divider = 0x1;
  break;
 default:
  dev_err(dmic->dev, "invalid out frequency: %dHz\n",
   dmic->out_freq);
  break;
 }

 return divider;

div_err:
 dev_err(dmic->dev, "invalid out frequency %dHz for %dHz input\n",
  dmic->out_freq, dmic->fclk_freq);
 return -EINVAL;
}
