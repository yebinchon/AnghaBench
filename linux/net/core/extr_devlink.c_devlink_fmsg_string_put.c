
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_fmsg {int dummy; } ;


 int NLA_NUL_STRING ;
 int devlink_fmsg_put_value (struct devlink_fmsg*,char const*,scalar_t__,int ) ;
 scalar_t__ strlen (char const*) ;

int devlink_fmsg_string_put(struct devlink_fmsg *fmsg, const char *value)
{
 return devlink_fmsg_put_value(fmsg, value, strlen(value) + 1,
          NLA_NUL_STRING);
}
