
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int hoontech_init (struct snd_ice1712*,int) ;

__attribute__((used)) static int snd_ice1712_hoontech_init(struct snd_ice1712 *ice)
{
 return hoontech_init(ice, 0);
}
