
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {scalar_t__ size_max; scalar_t__ size_min; int size_granularity; } ;
struct devlink_resource {TYPE_1__ size_params; } ;


 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int div64_u64_rem (scalar_t__,int ,scalar_t__*) ;

__attribute__((used)) static int
devlink_resource_validate_size(struct devlink_resource *resource, u64 size,
          struct netlink_ext_ack *extack)
{
 u64 reminder;
 int err = 0;

 if (size > resource->size_params.size_max) {
  NL_SET_ERR_MSG_MOD(extack, "Size larger than maximum");
  err = -EINVAL;
 }

 if (size < resource->size_params.size_min) {
  NL_SET_ERR_MSG_MOD(extack, "Size smaller than minimum");
  err = -EINVAL;
 }

 div64_u64_rem(size, resource->size_params.size_granularity, &reminder);
 if (reminder) {
  NL_SET_ERR_MSG_MOD(extack, "Wrong granularity");
  err = -EINVAL;
 }

 return err;
}
