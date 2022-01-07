
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;
struct snd_ac97 {unsigned char num; struct snd_ice1712* private_data; } ;


 int AC97_CMD ;
 int AC97_DATA ;
 int AC97_INDEX ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 unsigned char VT1724_AC97_ID_MASK ;
 unsigned char VT1724_AC97_READ ;
 unsigned short inw (int ) ;
 int outb (unsigned char,int ) ;
 unsigned char snd_vt1724_ac97_ready (struct snd_ice1712*) ;
 scalar_t__ snd_vt1724_ac97_wait_bit (struct snd_ice1712*,unsigned char) ;

__attribute__((used)) static unsigned short snd_vt1724_ac97_read(struct snd_ac97 *ac97, unsigned short reg)
{
 struct snd_ice1712 *ice = ac97->private_data;
 unsigned char old_cmd;

 old_cmd = snd_vt1724_ac97_ready(ice);
 old_cmd &= ~VT1724_AC97_ID_MASK;
 old_cmd |= ac97->num;
 outb(reg, ICEMT1724(ice, AC97_INDEX));
 outb(old_cmd | VT1724_AC97_READ, ICEMT1724(ice, AC97_CMD));
 if (snd_vt1724_ac97_wait_bit(ice, VT1724_AC97_READ) < 0)
  return ~0;
 return inw(ICEMT1724(ice, AC97_DATA));
}
