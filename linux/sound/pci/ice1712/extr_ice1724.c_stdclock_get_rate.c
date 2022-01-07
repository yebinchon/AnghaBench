
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int RATE ;
 int inb (int ) ;
 unsigned int* stdclock_rate_list ;

__attribute__((used)) static unsigned int stdclock_get_rate(struct snd_ice1712 *ice)
{
 return stdclock_rate_list[inb(ICEMT1724(ice, RATE)) & 15];
}
