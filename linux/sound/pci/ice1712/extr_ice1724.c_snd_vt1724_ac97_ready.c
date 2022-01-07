
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ice1712 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int AC97_CMD ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 unsigned char VT1724_AC97_READ ;
 unsigned char VT1724_AC97_READY ;
 unsigned char VT1724_AC97_WRITE ;
 int dev_dbg (int ,char*) ;
 unsigned char inb (int ) ;

__attribute__((used)) static unsigned char snd_vt1724_ac97_ready(struct snd_ice1712 *ice)
{
 unsigned char old_cmd;
 int tm;
 for (tm = 0; tm < 0x10000; tm++) {
  old_cmd = inb(ICEMT1724(ice, AC97_CMD));
  if (old_cmd & (VT1724_AC97_WRITE | VT1724_AC97_READ))
   continue;
  if (!(old_cmd & VT1724_AC97_READY))
   continue;
  return old_cmd;
 }
 dev_dbg(ice->card->dev, "snd_vt1724_ac97_ready: timeout\n");
 return old_cmd;
}
