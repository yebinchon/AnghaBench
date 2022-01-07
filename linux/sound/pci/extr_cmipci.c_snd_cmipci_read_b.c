
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmipci {scalar_t__ iobase; } ;


 unsigned char inb (scalar_t__) ;

__attribute__((used)) static inline unsigned char snd_cmipci_read_b(struct cmipci *cm, unsigned int cmd)
{
 return inb(cm->iobase + cmd);
}
