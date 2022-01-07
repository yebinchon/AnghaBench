
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int number; } ;


 int EBUSY ;
 int EINVAL ;
 int SNDRV_MINOR (int ,int) ;
 int SNDRV_OS_MINORS ;
 scalar_t__ snd_BUG_ON (int) ;
 scalar_t__* snd_minors ;

__attribute__((used)) static int snd_find_free_minor(int type, struct snd_card *card, int dev)
{
 int minor;

 switch (type) {
 case 129:
 case 128:
  minor = type;
  break;
 case 134:
  if (snd_BUG_ON(!card))
   return -EINVAL;
  minor = SNDRV_MINOR(card->number, type);
  break;
 case 133:
 case 130:
 case 131:
 case 132:
 case 135:
  if (snd_BUG_ON(!card))
   return -EINVAL;
  minor = SNDRV_MINOR(card->number, type + dev);
  break;
 default:
  return -EINVAL;
 }
 if (snd_BUG_ON(minor < 0 || minor >= SNDRV_OS_MINORS))
  return -EINVAL;
 if (snd_minors[minor])
  return -EBUSY;
 return minor;
}
