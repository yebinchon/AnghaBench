
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sk_buff {int dummy; } ;
struct netns_ipvs {int net; } ;


 int ip_defrag (int ,struct sk_buff*,int ) ;
 int ip_hdr (struct sk_buff*) ;
 int ip_send_check (int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

__attribute__((used)) static inline int ip_vs_gather_frags(struct netns_ipvs *ipvs,
         struct sk_buff *skb, u_int32_t user)
{
 int err;

 local_bh_disable();
 err = ip_defrag(ipvs->net, skb, user);
 local_bh_enable();
 if (!err)
  ip_send_check(ip_hdr(skb));

 return err;
}
