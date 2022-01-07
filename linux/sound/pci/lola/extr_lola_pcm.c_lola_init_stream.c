
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lola_stream {int nid; int index; int dsd; int can_float; } ;
struct lola {int input_src_caps_mask; TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int LOLA_PAR_AUDIO_WIDGET_CAP ;
 int LOLA_PAR_STREAM_FORMATS ;
 scalar_t__ MAX_STREAM_IN_COUNT ;
 int PLAY ;
 int dev_err (int ,char*,unsigned int,...) ;
 int lola_read_param (struct lola*,int,int ,unsigned int*) ;

__attribute__((used)) static int lola_init_stream(struct lola *chip, struct lola_stream *str,
       int idx, int nid, int dir)
{
 unsigned int val;
 int err;

 str->nid = nid;
 str->index = idx;
 str->dsd = idx;
 if (dir == PLAY)
  str->dsd += MAX_STREAM_IN_COUNT;
 err = lola_read_param(chip, nid, LOLA_PAR_AUDIO_WIDGET_CAP, &val);
 if (err < 0) {
  dev_err(chip->card->dev, "Can't read wcaps for 0x%x\n", nid);
  return err;
 }
 if (dir == PLAY) {

  if ((val & 0x00f00dff) != 0x00000010) {
   dev_err(chip->card->dev,
    "Invalid wcaps 0x%x for 0x%x\n",
          val, nid);
   return -EINVAL;
  }
 } else {



  if ((val & 0x00f00cff) != 0x00100010) {
   dev_err(chip->card->dev,
    "Invalid wcaps 0x%x for 0x%x\n",
          val, nid);
   return -EINVAL;
  }

  if ((val & 0x00001200) == 0x00001200)
   chip->input_src_caps_mask |= (1 << idx);
 }

 err = lola_read_param(chip, nid, LOLA_PAR_STREAM_FORMATS, &val);
 if (err < 0) {
  dev_err(chip->card->dev, "Can't read FORMATS 0x%x\n", nid);
  return err;
 }
 val &= 3;
 if (val == 3)
  str->can_float = 1;
 if (!(val & 1)) {
  dev_err(chip->card->dev,
   "Invalid formats 0x%x for 0x%x", val, nid);
  return -EINVAL;
 }
 return 0;
}
