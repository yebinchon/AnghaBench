
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dmic {unsigned int out_freq; int dev; } ;


 int EINVAL ;
 int OMAP_DMIC_ABE_DMIC_CLK ;
 int dev_err (int ,char*,unsigned int) ;

__attribute__((used)) static int omap_dmic_select_outclk(struct omap_dmic *dmic, int clk_id,
        unsigned int freq)
{
 int ret = 0;

 if (clk_id != OMAP_DMIC_ABE_DMIC_CLK) {
  dev_err(dmic->dev, "output clk_id (%d) not supported\n",
   clk_id);
  return -EINVAL;
 }

 switch (freq) {
 case 1536000:
 case 2400000:
 case 3072000:
 case 3840000:
  dmic->out_freq = freq;
  break;
 default:
  dev_err(dmic->dev, "invalid out frequency: %dHz\n", freq);
  dmic->out_freq = 0;
  ret = -EINVAL;
 }

 return ret;
}
