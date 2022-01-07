
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int dummy; } ;


 int __snd_gf1_write8 (struct snd_gus_card*,unsigned char,unsigned char) ;

void snd_gf1_write8(struct snd_gus_card * gus,
      unsigned char reg,
      unsigned char data)
{
 __snd_gf1_write8(gus, reg, data);
}
