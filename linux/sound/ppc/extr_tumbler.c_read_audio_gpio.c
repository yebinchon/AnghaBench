
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmac_gpio {int active_state; int addr; } ;


 int do_gpio_read (struct pmac_gpio*) ;

__attribute__((used)) static int read_audio_gpio(struct pmac_gpio *gp)
{
 int ret;
 if (! gp->addr)
  return 0;
 ret = do_gpio_read(gp);
 ret = (ret & 0x02) !=0;
 return ret == gp->active_state;
}
