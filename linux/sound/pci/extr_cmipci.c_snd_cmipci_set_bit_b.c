
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmipci {scalar_t__ iobase; } ;


 unsigned char inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static int snd_cmipci_set_bit_b(struct cmipci *cm, unsigned int cmd, unsigned char flag)
{
 unsigned char val, oval;
 val = oval = inb(cm->iobase + cmd);
 val |= flag;
 if (val == oval)
  return 0;
 outb(val, cm->iobase + cmd);
 return 1;
}
