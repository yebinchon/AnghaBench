
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static u8 snd_cmi8328_cfg_read(u16 port, u8 reg)
{
 outb(0x43, port + 3);
 outb(0x21, port + 3);
 outb(reg, port + 3);
 return inb(port);
}
