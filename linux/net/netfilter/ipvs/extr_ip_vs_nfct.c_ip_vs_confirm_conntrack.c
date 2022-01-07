
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int nf_conntrack_confirm (struct sk_buff*) ;

int ip_vs_confirm_conntrack(struct sk_buff *skb)
{
 return nf_conntrack_confirm(skb);
}
