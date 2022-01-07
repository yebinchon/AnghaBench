
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ovs_conntrack_info {int dummy; } ;


 int ENOTSUPP ;

__attribute__((used)) static inline int ovs_ct_action_to_attr(const struct ovs_conntrack_info *info,
     struct sk_buff *skb)
{
 return -ENOTSUPP;
}
