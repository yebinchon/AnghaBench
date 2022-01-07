
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dev; int * bus; } ;


 int device_del (int *) ;
 int put_device (int *) ;
 int snd_soc_ac97_free_gpio (struct snd_ac97*) ;

void snd_soc_free_ac97_component(struct snd_ac97 *ac97)
{
 snd_soc_ac97_free_gpio(ac97);
 device_del(&ac97->dev);
 ac97->bus = ((void*)0);
 put_device(&ac97->dev);
}
