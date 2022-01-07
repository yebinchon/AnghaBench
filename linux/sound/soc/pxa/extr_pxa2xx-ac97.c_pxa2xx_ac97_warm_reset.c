
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_controller {int dummy; } ;


 int pxa2xx_ac97_finish_reset () ;
 int pxa2xx_ac97_try_warm_reset () ;

__attribute__((used)) static void pxa2xx_ac97_warm_reset(struct ac97_controller *adrv)
{
 pxa2xx_ac97_try_warm_reset();

 pxa2xx_ac97_finish_reset();
}
