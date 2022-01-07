
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int src_mask; int dest_mask; int nid; TYPE_1__* array; } ;
struct lola {TYPE_2__ mixer; } ;
struct TYPE_3__ {int * dest_mix_gain_enable; int ** dest_mix_gain; } ;


 int EINVAL ;
 int LOLA_VERB_SET_MIX_GAIN ;
 int lola_codec_flush (struct lola*) ;
 int lola_codec_write (struct lola*,int ,int ,unsigned int,unsigned int) ;
 unsigned int readl (int *) ;
 int writel (unsigned int,int *) ;
 int writew (unsigned short,int *) ;

__attribute__((used)) static int lola_mixer_set_mapping_gain(struct lola *chip,
           unsigned int src, unsigned int dest,
           unsigned short gain, bool on)
{
 unsigned int val;

 if (!(chip->mixer.src_mask & (1 << src)) ||
     !(chip->mixer.dest_mask & (1 << dest)))
  return -EINVAL;
 if (on)
  writew(gain, &chip->mixer.array->dest_mix_gain[dest][src]);
 val = readl(&chip->mixer.array->dest_mix_gain_enable[dest]);
 if (on)
  val |= (1 << src);
 else
  val &= ~(1 << src);
 writel(val, &chip->mixer.array->dest_mix_gain_enable[dest]);
 lola_codec_flush(chip);
 return lola_codec_write(chip, chip->mixer.nid, LOLA_VERB_SET_MIX_GAIN,
    src, dest);
}
