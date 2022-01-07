
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_fmsg {int dummy; } ;


 int devlink_fmsg_nest_end (struct devlink_fmsg*) ;

int devlink_fmsg_arr_pair_nest_end(struct devlink_fmsg *fmsg)
{
 int err;

 err = devlink_fmsg_nest_end(fmsg);
 if (err)
  return err;

 err = devlink_fmsg_nest_end(fmsg);
 if (err)
  return err;

 return 0;
}
