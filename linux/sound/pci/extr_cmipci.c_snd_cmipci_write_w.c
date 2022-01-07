
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmipci {scalar_t__ iobase; } ;


 int outw (unsigned short,scalar_t__) ;

__attribute__((used)) static inline void snd_cmipci_write_w(struct cmipci *cm, unsigned int cmd, unsigned short data)
{
 outw(data, cm->iobase + cmd);
}
