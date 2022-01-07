
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ac97 {unsigned short addr; int num; struct fm801* private_data; } ;
struct fm801 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int AC97_CMD ;
 int AC97_DATA ;
 unsigned short FM801_AC97_ADDR_SHIFT ;
 unsigned short FM801_AC97_READ ;
 int dev_err (int ,char*,...) ;
 int fm801_ac97_is_ready (struct fm801*,int) ;
 int fm801_ac97_is_valid (struct fm801*,int) ;
 unsigned short fm801_readw (struct fm801*,int ) ;
 int fm801_writew (struct fm801*,int ,unsigned short) ;

__attribute__((used)) static unsigned short snd_fm801_codec_read(struct snd_ac97 *ac97, unsigned short reg)
{
 struct fm801 *chip = ac97->private_data;




 if (!fm801_ac97_is_ready(chip, 100)) {
  dev_err(chip->card->dev, "AC'97 interface is busy (1)\n");
  return 0;
 }


 fm801_writew(chip, AC97_CMD,
       reg | (ac97->addr << FM801_AC97_ADDR_SHIFT) | FM801_AC97_READ);
 if (!fm801_ac97_is_ready(chip, 100)) {
  dev_err(chip->card->dev, "AC'97 interface #%d is busy (2)\n",
   ac97->num);
  return 0;
 }

 if (!fm801_ac97_is_valid(chip, 1000)) {
  dev_err(chip->card->dev,
   "AC'97 interface #%d is not valid (2)\n", ac97->num);
  return 0;
 }

 return fm801_readw(chip, AC97_DATA);
}
