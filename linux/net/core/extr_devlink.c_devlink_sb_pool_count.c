
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct devlink_sb {scalar_t__ egress_pools_count; scalar_t__ ingress_pools_count; } ;



__attribute__((used)) static u16 devlink_sb_pool_count(struct devlink_sb *devlink_sb)
{
 return devlink_sb->ingress_pools_count + devlink_sb->egress_pools_count;
}
