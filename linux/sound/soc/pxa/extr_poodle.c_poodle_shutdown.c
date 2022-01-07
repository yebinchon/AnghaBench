
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int POODLE_LOCOMO_GPIO_MUTE_L ;
 int POODLE_LOCOMO_GPIO_MUTE_R ;
 int locomo_gpio_write (int *,int ,int) ;
 TYPE_1__ poodle_locomo_device ;

__attribute__((used)) static void poodle_shutdown(struct snd_pcm_substream *substream)
{

 locomo_gpio_write(&poodle_locomo_device.dev,
  POODLE_LOCOMO_GPIO_MUTE_L, 1);
 locomo_gpio_write(&poodle_locomo_device.dev,
  POODLE_LOCOMO_GPIO_MUTE_R, 1);
}
