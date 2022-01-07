
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola {int dummy; } ;


 int corb_send_verb (struct lola*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int verbose_debug (char*,unsigned int,unsigned int,unsigned int,unsigned int) ;

int lola_codec_write(struct lola *chip, unsigned int nid, unsigned int verb,
       unsigned int data, unsigned int extdata)
{
 verbose_debug("codec_write NID=%x, verb=%x, data=%x, ext=%x\n",
        nid, verb, data, extdata);
 return corb_send_verb(chip, nid, verb, data, extdata);
}
