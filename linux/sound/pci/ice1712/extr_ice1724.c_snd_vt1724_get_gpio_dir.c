
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int GPIO_DIRECTION ;
 int ICEREG1724 (struct snd_ice1712*,int ) ;
 unsigned int inl (int ) ;

__attribute__((used)) static unsigned int snd_vt1724_get_gpio_dir(struct snd_ice1712 *ice)
{
 return inl(ICEREG1724(ice, GPIO_DIRECTION));
}
