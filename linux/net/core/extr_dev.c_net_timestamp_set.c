
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ tstamp; } ;


 int __net_timestamp (struct sk_buff*) ;
 int netstamp_needed_key ;
 scalar_t__ static_branch_unlikely (int *) ;

__attribute__((used)) static inline void net_timestamp_set(struct sk_buff *skb)
{
 skb->tstamp = 0;
 if (static_branch_unlikely(&netstamp_needed_key))
  __net_timestamp(skb);
}
