
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ip_tunnel_encap_ops {int (* err_handler ) (struct sk_buff*,int ) ;} ;


 int ENOENT ;
 int MAX_IPTUN_ENCAP_OPS ;
 int * iptun_encaps ;
 struct ip_tunnel_encap_ops* rcu_dereference (int ) ;

__attribute__((used)) static int __udp4_lib_err_encap_no_sk(struct sk_buff *skb, u32 info)
{
 int i;

 for (i = 0; i < MAX_IPTUN_ENCAP_OPS; i++) {
  int (*handler)(struct sk_buff *skb, u32 info);
  const struct ip_tunnel_encap_ops *encap;

  encap = rcu_dereference(iptun_encaps[i]);
  if (!encap)
   continue;
  handler = encap->err_handler;
  if (handler && !handler(skb, info))
   return 0;
 }

 return -ENOENT;
}
