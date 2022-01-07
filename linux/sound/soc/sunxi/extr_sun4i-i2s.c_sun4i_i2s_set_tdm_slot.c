
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_i2s {int slots; int slot_width; } ;
struct snd_soc_dai {int dummy; } ;


 int EINVAL ;
 struct sun4i_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int sun4i_i2s_set_tdm_slot(struct snd_soc_dai *dai,
      unsigned int tx_mask, unsigned int rx_mask,
      int slots, int slot_width)
{
 struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);

 if (slots > 8)
  return -EINVAL;

 i2s->slots = slots;
 i2s->slot_width = slot_width;

 return 0;
}
