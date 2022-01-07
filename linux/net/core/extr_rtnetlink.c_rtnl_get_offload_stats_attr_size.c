
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_link_stats64 {int dummy; } ;




__attribute__((used)) static int rtnl_get_offload_stats_attr_size(int attr_id)
{
 switch (attr_id) {
 case 128:
  return sizeof(struct rtnl_link_stats64);
 }

 return 0;
}
