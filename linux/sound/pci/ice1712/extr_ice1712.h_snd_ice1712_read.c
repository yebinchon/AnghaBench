
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_ice1712 {int dummy; } ;


 int DATA ;
 int ICEREG (struct snd_ice1712*,int ) ;
 int INDEX ;
 int inb (int ) ;
 int outb (int ,int ) ;

__attribute__((used)) static inline u8 snd_ice1712_read(struct snd_ice1712 *ice, u8 addr)
{
 outb(addr, ICEREG(ice, INDEX));
 return inb(ICEREG(ice, DATA));
}
