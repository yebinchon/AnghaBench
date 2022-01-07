
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_ice1712 {int dummy; } ;


 int DATA ;
 int ICEREG (struct snd_ice1712*,int ) ;
 int INDEX ;
 int outb (int ,int ) ;

__attribute__((used)) static inline void snd_ice1712_write(struct snd_ice1712 *ice, u8 addr, u8 data)
{
 outb(addr, ICEREG(ice, INDEX));
 outb(data, ICEREG(ice, DATA));
}
