
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int vt1720; } ;


 int GPIO_WRITE_MASK ;
 int GPIO_WRITE_MASK_22 ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 scalar_t__ inb (int ) ;
 unsigned int inw (int ) ;

__attribute__((used)) static unsigned int snd_vt1724_get_gpio_mask(struct snd_ice1712 *ice)
{
 unsigned int mask;
 if (!ice->vt1720)
  mask = (unsigned int)inb(ICEREG1724(ice, GPIO_WRITE_MASK_22));
 else
  mask = 0;
 mask = (mask << 16) | inw(ICEREG1724(ice, GPIO_WRITE_MASK));
 return mask;
}
