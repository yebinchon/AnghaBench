
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg_timerctrl; int reg_timerdata; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;


 int inb (int ) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static inline void __snd_gf1_adlib_write(struct snd_gus_card * gus,
      unsigned char reg, unsigned char data)
{
 outb(reg, gus->gf1.reg_timerctrl);
 inb(gus->gf1.reg_timerctrl);
 inb(gus->gf1.reg_timerctrl);
 outb(data, gus->gf1.reg_timerdata);
 inb(gus->gf1.reg_timerctrl);
 inb(gus->gf1.reg_timerctrl);
}
