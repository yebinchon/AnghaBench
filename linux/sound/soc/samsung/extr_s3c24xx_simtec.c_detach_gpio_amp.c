
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_audio_simtec_pdata {scalar_t__* amp_gain; scalar_t__ amp_gpio; } ;


 int gpio_free (scalar_t__) ;

__attribute__((used)) static void detach_gpio_amp(struct s3c24xx_audio_simtec_pdata *pd)
{
 if (pd->amp_gain[0] > 0) {
  gpio_free(pd->amp_gain[0]);
  gpio_free(pd->amp_gain[1]);
 }

 if (pd->amp_gpio > 0)
  gpio_free(pd->amp_gpio);
}
