
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
 unsigned char VT1724_AC97_WRITE ;
 int outb (unsigned char,int ) ;
 int outw (unsigned short,int ) ;
 unsigned char snd_vt1724_ac97_ready (struct snd_ice1712*) ;
 int snd_vt1724_ac97_wait_bit (struct snd_ice1712*,unsigned char) ;

__attribute__((used)) static void snd_vt1724_ac97_write(struct snd_ac97 *ac97,
      unsigned short reg,
      unsigned short val)
{
 struct snd_ice1712 *ice = ac97->private_data;
 unsigned char old_cmd;

 old_cmd = snd_vt1724_ac97_ready(ice);
 old_cmd &= ~VT1724_AC97_ID_MASK;
 old_cmd |= ac97->num;
 outb(reg, ICEMT1724(ice, AC97_INDEX));
 outw(val, ICEMT1724(ice, AC97_DATA));
 outb(old_cmd | VT1724_AC97_WRITE, ICEMT1724(ice, AC97_CMD));
 snd_vt1724_ac97_wait_bit(ice, VT1724_AC97_WRITE);
}
