
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sk_buff {int ignore_df; } ;
struct net {int dummy; } ;


 int ip_defrag (struct net*,struct sk_buff*,int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

__attribute__((used)) static int nf_ct_ipv4_gather_frags(struct net *net, struct sk_buff *skb,
       u_int32_t user)
{
 int err;

 local_bh_disable();
 err = ip_defrag(net, skb, user);
 local_bh_enable();

 if (!err)
  skb->ignore_df = 1;

 return err;
}
