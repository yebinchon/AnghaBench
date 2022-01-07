
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct devlink_fmsg {int dummy; } ;


 int devlink_fmsg_pair_nest_end (struct devlink_fmsg*) ;
 int devlink_fmsg_pair_nest_start (struct devlink_fmsg*,char const*) ;
 int devlink_fmsg_u64_put (struct devlink_fmsg*,int ) ;

int devlink_fmsg_u64_pair_put(struct devlink_fmsg *fmsg, const char *name,
         u64 value)
{
 int err;

 err = devlink_fmsg_pair_nest_start(fmsg, name);
 if (err)
  return err;

 err = devlink_fmsg_u64_put(fmsg, value);
 if (err)
  return err;

 err = devlink_fmsg_pair_nest_end(fmsg);
 if (err)
  return err;

 return 0;
}
