
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card_aica {int card; } ;
struct platform_device {int dummy; } ;


 int ENODEV ;
 int kfree (struct snd_card_aica*) ;
 struct snd_card_aica* platform_get_drvdata (struct platform_device*) ;
 int snd_card_free (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int snd_aica_remove(struct platform_device *devptr)
{
 struct snd_card_aica *dreamcastcard;
 dreamcastcard = platform_get_drvdata(devptr);
 if (unlikely(!dreamcastcard))
  return -ENODEV;
 snd_card_free(dreamcastcard->card);
 kfree(dreamcastcard);
 return 0;
}
