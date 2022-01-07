
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmipci {scalar_t__ iobase; } ;


 scalar_t__ CM_REG_SB16_ADDR ;
 scalar_t__ CM_REG_SB16_DATA ;
 unsigned char inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static unsigned char snd_cmipci_mixer_read(struct cmipci *s, unsigned char idx)
{
 unsigned char v;

 outb(idx, s->iobase + CM_REG_SB16_ADDR);
 v = inb(s->iobase + CM_REG_SB16_DATA);
 return v;
}
