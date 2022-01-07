
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_tplg {int dummy; } ;
struct snd_soc_tplg_channel {int shift; int id; } ;


 int EINVAL ;
 int SND_SOC_TPLG_MAX_CHAN ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int tplc_chan_get_shift(struct soc_tplg *tplg,
 struct snd_soc_tplg_channel *chan, int map)
{
 int i;

 for (i = 0; i < SND_SOC_TPLG_MAX_CHAN; i++) {
  if (le32_to_cpu(chan[i].id) == map)
   return le32_to_cpu(chan[i].shift);
 }

 return -EINVAL;
}
