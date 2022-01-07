
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_fmsg {int dummy; } ;


 int DEVLINK_ATTR_FMSG_PAIR_NEST_START ;
 int devlink_fmsg_nest_common (struct devlink_fmsg*,int ) ;
 int devlink_fmsg_put_name (struct devlink_fmsg*,char const*) ;

int devlink_fmsg_pair_nest_start(struct devlink_fmsg *fmsg, const char *name)
{
 int err;

 err = devlink_fmsg_nest_common(fmsg, DEVLINK_ATTR_FMSG_PAIR_NEST_START);
 if (err)
  return err;

 err = devlink_fmsg_put_name(fmsg, name);
 if (err)
  return err;

 return 0;
}
