
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dummy; } ;
struct device {int dummy; } ;


 struct snd_card* dev_get_drvdata (struct device*) ;
 int snd_card_free (struct snd_card*) ;

__attribute__((used)) static int snd_jazz16_remove(struct device *devptr, unsigned int dev)
{
 struct snd_card *card = dev_get_drvdata(devptr);

 snd_card_free(card);
 return 0;
}
