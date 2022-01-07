
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lola_stream {int format_verb; int index; int nid; } ;
struct lola {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int LOLA_VERB_SET_CHANNEL_STREAMID ;
 int LOLA_VERB_SET_STREAM_FORMAT ;
 int dev_err (int ,char*,int) ;
 int lola_codec_read (struct lola*,int ,int ,int,unsigned int,unsigned int*,int *) ;

__attribute__((used)) static int lola_set_stream_config(struct lola *chip,
      struct lola_stream *str,
      int channels)
{
 int i, err;
 unsigned int verb, val;




 err = lola_codec_read(chip, str->nid, LOLA_VERB_SET_STREAM_FORMAT,
         str->format_verb, 0, &val, ((void*)0));
 if (err < 0) {
  dev_err(chip->card->dev, "Cannot set stream format 0x%x\n",
         str->format_verb);
  return err;
 }


 for (i = 0; i < channels; i++) {
  verb = (str->index << 6) | i;
  err = lola_codec_read(chip, str[i].nid,
          LOLA_VERB_SET_CHANNEL_STREAMID, 0, verb,
          &val, ((void*)0));
  if (err < 0) {
   dev_err(chip->card->dev,
    "Cannot set stream channel %d\n", i);
   return err;
  }
 }
 return 0;
}
