
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;


 int outb (int,scalar_t__) ;

__attribute__((used)) static void snd_cmi8328_cfg_write(u16 port, u8 reg, u8 val)
{
 outb(0x43, port + 3);
 outb(0x21, port + 3);
 outb(reg, port + 3);
 outb(val, port + 3);
}
