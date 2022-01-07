
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int card_dev; } ;
struct device {int release; int class; int * parent; } ;


 int default_release ;
 int device_initialize (struct device*) ;
 int sound_class ;

void snd_device_initialize(struct device *dev, struct snd_card *card)
{
 device_initialize(dev);
 if (card)
  dev->parent = &card->card_dev;
 dev->class = sound_class;
 dev->release = default_release;
}
