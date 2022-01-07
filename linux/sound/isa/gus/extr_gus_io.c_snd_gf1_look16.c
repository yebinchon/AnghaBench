
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int dummy; } ;


 unsigned short __snd_gf1_look16 (struct snd_gus_card*,unsigned char) ;

unsigned short snd_gf1_look16(struct snd_gus_card * gus, unsigned char reg)
{
 return __snd_gf1_look16(gus, reg);
}
