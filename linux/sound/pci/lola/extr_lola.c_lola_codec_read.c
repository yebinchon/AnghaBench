
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola {int dummy; } ;


 int corb_send_verb (struct lola*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int rirb_get_response (struct lola*,unsigned int*,unsigned int*) ;
 int verbose_debug (char*,unsigned int,unsigned int,unsigned int,unsigned int) ;

int lola_codec_read(struct lola *chip, unsigned int nid, unsigned int verb,
      unsigned int data, unsigned int extdata,
      unsigned int *val, unsigned int *extval)
{
 int err;

 verbose_debug("codec_read NID=%x, verb=%x, data=%x, ext=%x\n",
        nid, verb, data, extdata);
 err = corb_send_verb(chip, nid, verb, data, extdata);
 if (err < 0)
  return err;
 err = rirb_get_response(chip, val, extval);
 return err;
}
