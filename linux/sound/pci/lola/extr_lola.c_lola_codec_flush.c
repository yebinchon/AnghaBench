
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lola {int dummy; } ;


 int rirb_get_response (struct lola*,unsigned int*,int *) ;

int lola_codec_flush(struct lola *chip)
{
 unsigned int tmp;
 return rirb_get_response(chip, &tmp, ((void*)0));
}
