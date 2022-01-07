
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct devlink_fmsg {int dummy; } ;


 int NLA_BINARY ;
 int devlink_fmsg_put_value (struct devlink_fmsg*,void const*,int ,int ) ;

int devlink_fmsg_binary_put(struct devlink_fmsg *fmsg, const void *value,
       u16 value_len)
{
 return devlink_fmsg_put_value(fmsg, value, value_len, NLA_BINARY);
}
