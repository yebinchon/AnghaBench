
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_controller {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int ac97_unbound_ctrl_write(struct ac97_controller *adrv, int slot,
       unsigned short reg, unsigned short val)
{
 return -ENODEV;
}
