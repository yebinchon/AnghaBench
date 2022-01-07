
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg_data8; int reg_regsel; int reg_data16; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;


 int mb () ;
 int outb (unsigned char,int ) ;
 int outw (unsigned short,int ) ;

void snd_gf1_dram_addr(struct snd_gus_card * gus, unsigned int addr)
{
 outb(0x43, gus->gf1.reg_regsel);
 mb();
 outw((unsigned short) addr, gus->gf1.reg_data16);
 mb();
 outb(0x44, gus->gf1.reg_regsel);
 mb();
 outb((unsigned char) (addr >> 16), gus->gf1.reg_data8);
 mb();
}
