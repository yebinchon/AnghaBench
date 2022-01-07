
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigmadsp_control {int num_bytes; int addr; } ;
struct sigmadsp {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* safeload ) (struct sigmadsp*,int ,void*,int) ;} ;


 int sigmadsp_write (struct sigmadsp*,int ,void*,int) ;
 int stub1 (struct sigmadsp*,int ,void*,int) ;

__attribute__((used)) static int sigmadsp_ctrl_write(struct sigmadsp *sigmadsp,
 struct sigmadsp_control *ctrl, void *data)
{

 if (ctrl->num_bytes <= 20 && sigmadsp->ops && sigmadsp->ops->safeload)
  return sigmadsp->ops->safeload(sigmadsp, ctrl->addr, data,
   ctrl->num_bytes);
 else
  return sigmadsp_write(sigmadsp, ctrl->addr, data,
   ctrl->num_bytes);
}
