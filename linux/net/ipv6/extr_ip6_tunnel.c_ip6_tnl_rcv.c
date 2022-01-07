
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnl_ptk_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct metadata_dst {int dummy; } ;
struct ip6_tnl {int dummy; } ;


 int __ip6_tnl_rcv (struct ip6_tnl*,struct sk_buff*,struct tnl_ptk_info const*,struct metadata_dst*,int ,int) ;
 int ip6ip6_dscp_ecn_decapsulate ;

int ip6_tnl_rcv(struct ip6_tnl *t, struct sk_buff *skb,
  const struct tnl_ptk_info *tpi,
  struct metadata_dst *tun_dst,
  bool log_ecn_err)
{
 return __ip6_tnl_rcv(t, skb, tpi, tun_dst, ip6ip6_dscp_ecn_decapsulate,
        log_ecn_err);
}
