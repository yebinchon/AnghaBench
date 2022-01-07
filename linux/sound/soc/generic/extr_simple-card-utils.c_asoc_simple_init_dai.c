
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct asoc_simple_dai {int slot_width; scalar_t__ slots; int rx_slot_mask; int tx_slot_mask; int clk_direction; scalar_t__ sysclk; } ;


 int ENOTSUPP ;
 int dev_err (int ,char*) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,scalar_t__,int ) ;
 int snd_soc_dai_set_tdm_slot (struct snd_soc_dai*,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int asoc_simple_init_dai(struct snd_soc_dai *dai,
         struct asoc_simple_dai *simple_dai)
{
 int ret;

 if (!simple_dai)
  return 0;

 if (simple_dai->sysclk) {
  ret = snd_soc_dai_set_sysclk(dai, 0, simple_dai->sysclk,
          simple_dai->clk_direction);
  if (ret && ret != -ENOTSUPP) {
   dev_err(dai->dev, "simple-card: set_sysclk error\n");
   return ret;
  }
 }

 if (simple_dai->slots) {
  ret = snd_soc_dai_set_tdm_slot(dai,
            simple_dai->tx_slot_mask,
            simple_dai->rx_slot_mask,
            simple_dai->slots,
            simple_dai->slot_width);
  if (ret && ret != -ENOTSUPP) {
   dev_err(dai->dev, "simple-card: set_tdm_slot error\n");
   return ret;
  }
 }

 return 0;
}
