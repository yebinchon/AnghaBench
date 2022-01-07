
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
struct devlink_fmsg {int dummy; } ;


 int NLA_FLAG ;
 int devlink_fmsg_put_value (struct devlink_fmsg*,int*,int,int ) ;

int devlink_fmsg_bool_put(struct devlink_fmsg *fmsg, bool value)
{
 return devlink_fmsg_put_value(fmsg, &value, sizeof(value), NLA_FLAG);
}
