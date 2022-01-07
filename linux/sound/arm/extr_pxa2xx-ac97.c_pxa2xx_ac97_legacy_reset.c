
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int pxa2xx_ac97_finish_reset () ;
 int pxa2xx_ac97_try_cold_reset () ;
 int pxa2xx_ac97_try_warm_reset () ;

__attribute__((used)) static void pxa2xx_ac97_legacy_reset(struct snd_ac97 *ac97)
{
 if (!pxa2xx_ac97_try_cold_reset())
  pxa2xx_ac97_try_warm_reset();

 pxa2xx_ac97_finish_reset();
}
