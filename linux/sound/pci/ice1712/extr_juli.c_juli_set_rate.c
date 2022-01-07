
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int (* get_data ) (struct snd_ice1712*) ;int (* set_data ) (struct snd_ice1712*,unsigned int) ;} ;
struct snd_ice1712 {TYPE_1__ gpio; } ;


 unsigned int GPIO_RATE_MASK ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int RATE ;
 unsigned char VT1724_SPDIF_MASTER ;
 unsigned int get_gpio_val (unsigned int) ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 unsigned int stub1 (struct snd_ice1712*) ;
 int stub2 (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static void juli_set_rate(struct snd_ice1712 *ice, unsigned int rate)
{
 unsigned int old, new;
 unsigned char val;

 old = ice->gpio.get_data(ice);
 new = (old & ~GPIO_RATE_MASK) | get_gpio_val(rate);




 ice->gpio.set_data(ice, new);

 val = inb(ICEMT1724(ice, RATE));
 outb(val | VT1724_SPDIF_MASTER, ICEMT1724(ice, RATE));
}
