
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ac97_controller {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* reset ) (struct ac97_controller*) ;} ;


 int stub1 (struct ac97_controller*) ;

__attribute__((used)) static int ac97_bus_reset(struct ac97_controller *ac97_ctrl)
{
 ac97_ctrl->ops->reset(ac97_ctrl);

 return 0;
}
