
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;
struct snd_ac97 {struct snd_ice1712* private_data; } ;


 int AC97_CMD ;
 int AC97_DATA ;
 int AC97_INDEX ;
 unsigned char ICE1712_AC97_READ ;
 unsigned char ICE1712_AC97_READY ;
 unsigned char ICE1712_AC97_WRITE ;
 int ICEREG (struct snd_ice1712*,int ) ;
 unsigned char inb (int ) ;
 unsigned short inw (int ) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static unsigned short snd_ice1712_ac97_read(struct snd_ac97 *ac97,
         unsigned short reg)
{
 struct snd_ice1712 *ice = ac97->private_data;
 int tm;
 unsigned char old_cmd = 0;

 for (tm = 0; tm < 0x10000; tm++) {
  old_cmd = inb(ICEREG(ice, AC97_CMD));
  if (old_cmd & (ICE1712_AC97_WRITE | ICE1712_AC97_READ))
   continue;
  if (!(old_cmd & ICE1712_AC97_READY))
   continue;
  break;
 }
 outb(reg, ICEREG(ice, AC97_INDEX));
 outb(old_cmd | ICE1712_AC97_READ, ICEREG(ice, AC97_CMD));
 for (tm = 0; tm < 0x10000; tm++)
  if ((inb(ICEREG(ice, AC97_CMD)) & ICE1712_AC97_READ) == 0)
   break;
 if (tm >= 0x10000)
  return ~0;
 return inw(ICEREG(ice, AC97_DATA));
}
