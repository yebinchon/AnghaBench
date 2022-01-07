
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct snd_ice1712 {int dummy; } ;


 int DATA ;
 int ICEDS (struct snd_ice1712*,int ) ;
 int INDEX ;
 int inl (int ) ;
 int outb (int,int ) ;

__attribute__((used)) static inline u32 snd_ice1712_ds_read(struct snd_ice1712 *ice, u8 channel, u8 addr)
{
 outb((channel << 4) | addr, ICEDS(ice, INDEX));
 return inl(ICEDS(ice, DATA));
}
