
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct genl_family {unsigned int n_mcgrps; unsigned int mcgrp_offset; } ;
typedef int gfp_t ;


 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int genlmsg_mcast (struct sk_buff*,int ,unsigned int,int ) ;

int genlmsg_multicast_allns(const struct genl_family *family,
       struct sk_buff *skb, u32 portid,
       unsigned int group, gfp_t flags)
{
 if (WARN_ON_ONCE(group >= family->n_mcgrps))
  return -EINVAL;
 group = family->mcgrp_offset + group;
 return genlmsg_mcast(skb, portid, group, flags);
}
