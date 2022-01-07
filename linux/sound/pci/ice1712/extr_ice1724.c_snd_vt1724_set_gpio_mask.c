
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int vt1720; } ;


 int GPIO_WRITE_MASK ;
 int GPIO_WRITE_MASK_22 ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int inw (int ) ;
 int outb (unsigned int,int ) ;
 int outw (unsigned int,int ) ;

__attribute__((used)) static void snd_vt1724_set_gpio_mask(struct snd_ice1712 *ice, unsigned int data)
{
 outw(data, ICEREG1724(ice, GPIO_WRITE_MASK));
 if (!ice->vt1720)
  outb((data >> 16) & 0xff, ICEREG1724(ice, GPIO_WRITE_MASK_22));
 inw(ICEREG1724(ice, GPIO_WRITE_MASK));
}
