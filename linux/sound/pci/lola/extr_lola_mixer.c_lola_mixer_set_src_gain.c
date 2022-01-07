
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int src_mask; int nid; TYPE_2__* array; } ;
struct lola {TYPE_3__ mixer; TYPE_1__* card; } ;
struct TYPE_5__ {int src_gain_enable; int * src_gain; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int LOLA_VERB_SET_SOURCE_GAIN ;
 int dev_dbg (int ,char*,unsigned int,unsigned short,unsigned int) ;
 int lola_codec_flush (struct lola*) ;
 int lola_codec_write (struct lola*,int ,int ,unsigned int,int ) ;
 unsigned int readl (int *) ;
 unsigned short readw (int *) ;
 int writel (unsigned int,int *) ;
 int writew (unsigned short,int *) ;

__attribute__((used)) static int lola_mixer_set_src_gain(struct lola *chip, unsigned int id,
       unsigned short gain, bool on)
{
 unsigned int oldval, val;

 if (!(chip->mixer.src_mask & (1 << id)))
  return -EINVAL;
 oldval = val = readl(&chip->mixer.array->src_gain_enable);
 if (on)
  val |= (1 << id);
 else
  val &= ~(1 << id);

 if ((val == oldval) &&
     (gain == readw(&chip->mixer.array->src_gain[id])))
  return 0;

 dev_dbg(chip->card->dev,
  "lola_mixer_set_src_gain (id=%d, gain=%d) enable=%x\n",
   id, gain, val);
 writew(gain, &chip->mixer.array->src_gain[id]);
 writel(val, &chip->mixer.array->src_gain_enable);
 lola_codec_flush(chip);

 return lola_codec_write(chip, chip->mixer.nid,
    LOLA_VERB_SET_SOURCE_GAIN, id, 0);
}
