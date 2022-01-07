
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int CONTROL ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int VT1724_RESET ;
 int inb (int ) ;
 int msleep (int) ;
 int outb (int ,int ) ;

__attribute__((used)) static void snd_vt1724_chip_reset(struct snd_ice1712 *ice)
{
 outb(VT1724_RESET , ICEREG1724(ice, CONTROL));
 inb(ICEREG1724(ice, CONTROL));
 msleep(10);
 outb(0, ICEREG1724(ice, CONTROL));
 inb(ICEREG1724(ice, CONTROL));
 msleep(10);
}
