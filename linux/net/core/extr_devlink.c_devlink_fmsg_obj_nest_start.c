
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_fmsg {int dummy; } ;


 int DEVLINK_ATTR_FMSG_OBJ_NEST_START ;
 int devlink_fmsg_nest_common (struct devlink_fmsg*,int ) ;

int devlink_fmsg_obj_nest_start(struct devlink_fmsg *fmsg)
{
 return devlink_fmsg_nest_common(fmsg, DEVLINK_ATTR_FMSG_OBJ_NEST_START);
}
