
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {unsigned int* pro_volumes; } ;


 int ICEMT (struct snd_ice1712*,int ) ;
 int MONITOR_INDEX ;
 int MONITOR_VOLUME ;
 int outb (int,int ) ;
 int outw (unsigned short,int ) ;

__attribute__((used)) static void snd_ice1712_update_volume(struct snd_ice1712 *ice, int index)
{
 unsigned int vol = ice->pro_volumes[index];
 unsigned short val = 0;

 val |= (vol & 0x8000) == 0 ? (96 - (vol & 0x7f)) : 0x7f;
 val |= ((vol & 0x80000000) == 0 ? (96 - ((vol >> 16) & 0x7f)) : 0x7f) << 8;
 outb(index, ICEMT(ice, MONITOR_INDEX));
 outw(val, ICEMT(ice, MONITOR_VOLUME));
}
