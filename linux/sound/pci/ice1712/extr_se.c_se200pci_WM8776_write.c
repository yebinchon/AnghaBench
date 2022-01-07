
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int snd_vt1724_write_i2c (struct snd_ice1712*,int,unsigned int,unsigned int) ;

__attribute__((used)) static void se200pci_WM8776_write(struct snd_ice1712 *ice,
     unsigned int addr, unsigned int data)
{
 unsigned int val;

 val = (addr << 9) | data;
 snd_vt1724_write_i2c(ice, 0x34, val >> 8, val & 0xff);
}
