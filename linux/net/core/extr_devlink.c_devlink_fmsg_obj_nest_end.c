
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_fmsg {int dummy; } ;


 int devlink_fmsg_nest_end (struct devlink_fmsg*) ;

int devlink_fmsg_obj_nest_end(struct devlink_fmsg *fmsg)
{
 return devlink_fmsg_nest_end(fmsg);
}
