
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct flow_cls_common_offload {int prio; struct netlink_ext_ack* extack; int protocol; } ;
typedef int __be16 ;



__attribute__((used)) static void nft_flow_offload_common_init(struct flow_cls_common_offload *common,
      __be16 proto, int priority,
      struct netlink_ext_ack *extack)
{
 common->protocol = proto;
 common->prio = priority;
 common->extack = extack;
}
