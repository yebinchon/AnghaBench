
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_controller {int dummy; } ;


 int pxa2xx_ac97_write (int,unsigned short,unsigned short) ;

__attribute__((used)) static int pxa2xx_ac97_write_actrl(struct ac97_controller *adrv, int slot,
       unsigned short reg, unsigned short val)
{
 return pxa2xx_ac97_write(slot, reg, val);
}
