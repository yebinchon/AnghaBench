
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmipci {scalar_t__ iobase; } ;


 scalar_t__ CM_REG_SB16_ADDR ;
 scalar_t__ CM_REG_SB16_DATA ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static void snd_cmipci_mixer_write(struct cmipci *s, unsigned char idx, unsigned char data)
{
 outb(idx, s->iobase + CM_REG_SB16_ADDR);
 outb(data, s->iobase + CM_REG_SB16_DATA);
}
