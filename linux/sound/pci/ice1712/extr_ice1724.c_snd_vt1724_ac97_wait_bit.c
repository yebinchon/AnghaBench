
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ice1712 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int AC97_CMD ;
 int EIO ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int dev_dbg (int ,char*) ;
 unsigned char inb (int ) ;

__attribute__((used)) static int snd_vt1724_ac97_wait_bit(struct snd_ice1712 *ice, unsigned char bit)
{
 int tm;
 for (tm = 0; tm < 0x10000; tm++)
  if ((inb(ICEMT1724(ice, AC97_CMD)) & bit) == 0)
   return 0;
 dev_dbg(ice->card->dev, "snd_vt1724_ac97_wait_bit: timeout\n");
 return -EIO;
}
