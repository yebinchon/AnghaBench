
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg_dram; int reg_data8; int reg_regsel; int reg_data16; } ;
struct snd_gus_card {int reg_lock; TYPE_1__ gf1; } ;


 unsigned char SNDRV_GF1_GB_DRAM_IO_HIGH ;
 unsigned char SNDRV_GF1_GW_DRAM_IO_LOW ;
 unsigned char inb (int ) ;
 int mb () ;
 int outb (unsigned char,int ) ;
 int outw (unsigned short,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned char snd_gf1_peek(struct snd_gus_card * gus, unsigned int addr)
{
 unsigned long flags;
 unsigned char res;

 spin_lock_irqsave(&gus->reg_lock, flags);
 outb(SNDRV_GF1_GW_DRAM_IO_LOW, gus->gf1.reg_regsel);
 mb();
 outw((unsigned short) addr, gus->gf1.reg_data16);
 mb();
 outb(SNDRV_GF1_GB_DRAM_IO_HIGH, gus->gf1.reg_regsel);
 mb();
 outb((unsigned char) (addr >> 16), gus->gf1.reg_data8);
 mb();
 res = inb(gus->gf1.reg_dram);
 spin_unlock_irqrestore(&gus->reg_lock, flags);
 return res;
}
