
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int EINVAL ;





 int MADERA_OUTPUT_RATE_1 ;
 int MADERA_OUT_CLK_SRC_MASK ;
 int MADERA_OUT_EXT_CLK_DIV_MASK ;
 int MADERA_OUT_EXT_CLK_DIV_SHIFT ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int,unsigned int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int madera_set_outclk(struct snd_soc_component *component,
        unsigned int source, unsigned int freq)
{
 int div, div_inc, rate;

 switch (source) {
 case 128:
  dev_dbg(component->dev, "Configured OUTCLK to SYSCLK\n");
  snd_soc_component_update_bits(component, MADERA_OUTPUT_RATE_1,
           MADERA_OUT_CLK_SRC_MASK, source);
  return 0;
 case 132:
  dev_dbg(component->dev, "Configured OUTCLK to ASYNCCLK\n");
  snd_soc_component_update_bits(component, MADERA_OUTPUT_RATE_1,
           MADERA_OUT_CLK_SRC_MASK, source);
  return 0;
 case 131:
 case 130:
 case 129:
  break;
 default:
  return -EINVAL;
 }

 if (freq % 4000)
  rate = 5644800;
 else
  rate = 6144000;

 div = 1;
 div_inc = 0;
 while (div <= 8) {
  if (freq / div == rate && !(freq % div)) {
   dev_dbg(component->dev, "Configured %dHz OUTCLK\n", rate);
   snd_soc_component_update_bits(component,
    MADERA_OUTPUT_RATE_1,
    MADERA_OUT_EXT_CLK_DIV_MASK |
    MADERA_OUT_CLK_SRC_MASK,
    (div_inc << MADERA_OUT_EXT_CLK_DIV_SHIFT) |
    source);
   return 0;
  }
  div_inc++;
  div *= 2;
 }

 dev_err(component->dev,
  "Unable to generate %dHz OUTCLK from %dHz MCLK\n",
  rate, freq);
 return -EINVAL;
}
