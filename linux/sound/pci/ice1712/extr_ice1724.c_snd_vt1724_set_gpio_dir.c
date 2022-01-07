
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int GPIO_DIRECTION ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 int inw (int ) ;
 int outl (unsigned int,int ) ;

__attribute__((used)) static void snd_vt1724_set_gpio_dir(struct snd_ice1712 *ice, unsigned int data)
{
 outl(data, ICEREG1724(ice, GPIO_DIRECTION));
 inw(ICEREG1724(ice, GPIO_DIRECTION));
}
