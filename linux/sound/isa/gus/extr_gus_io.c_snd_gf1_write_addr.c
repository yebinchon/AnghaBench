
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int dummy; } ;


 int __snd_gf1_write_addr (struct snd_gus_card*,unsigned char,unsigned int,short) ;

void snd_gf1_write_addr(struct snd_gus_card * gus, unsigned char reg,
                        unsigned int addr, short w_16bit)
{
 __snd_gf1_write_addr(gus, reg, addr, w_16bit);
}
