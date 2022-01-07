
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int inb (unsigned long) ;
 int outb (int ,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static u8 snd_cs5530_mixer_read(unsigned long io, u8 reg)
{
 outb(reg, io + 4);
 udelay(20);
 reg = inb(io + 5);
 udelay(20);
 return reg;
}
