
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lola {unsigned int input_src_caps_mask; unsigned int input_src_mask; TYPE_3__* pcm; TYPE_1__* pin; } ;
struct TYPE_6__ {TYPE_2__* streams; } ;
struct TYPE_5__ {int nid; } ;
struct TYPE_4__ {int num_pins; } ;


 size_t CAPT ;
 int EINVAL ;
 int LOLA_VERB_SET_SRC ;
 int lola_codec_flush (struct lola*) ;
 int lola_codec_write (struct lola*,int ,int ,unsigned int,int ) ;

int lola_set_src_config(struct lola *chip, unsigned int src_mask, bool update)
{
 int ret = 0;
 int success = 0;
 int n, err;


 if ((chip->input_src_caps_mask & src_mask) != src_mask)
  return -EINVAL;

 for (n = 0; n < chip->pin[CAPT].num_pins; n += 2) {
  unsigned int mask = 3U << n;
  unsigned int new_src, src_state;
  if (!(chip->input_src_caps_mask & mask))
   continue;

  new_src = (src_mask & mask) != 0;
  if (update) {
   src_state = (chip->input_src_mask & mask) != 0;
   if (src_state == new_src)
    continue;
  }
  err = lola_codec_write(chip, chip->pcm[CAPT].streams[n].nid,
           LOLA_VERB_SET_SRC, new_src, 0);
  if (!err)
   success++;
  else
   ret = err;
 }
 if (success)
  ret = lola_codec_flush(chip);
 if (!ret)
  chip->input_src_mask = src_mask;
 return ret;
}
