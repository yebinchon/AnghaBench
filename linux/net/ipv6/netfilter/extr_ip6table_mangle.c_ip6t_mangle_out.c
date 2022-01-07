
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct sk_buff {scalar_t__ mark; } ;
struct nf_hook_state {TYPE_3__* net; } ;
struct in6_addr {int dummy; } ;
typedef int saddr ;
typedef int daddr ;
struct TYPE_4__ {int ip6table_mangle; } ;
struct TYPE_6__ {TYPE_1__ ipv6; } ;
struct TYPE_5__ {scalar_t__ hop_limit; int daddr; int saddr; } ;


 unsigned int NF_DROP ;
 unsigned int NF_DROP_ERR (int) ;
 unsigned int NF_STOLEN ;
 int ip6_route_me_harder (TYPE_3__*,struct sk_buff*) ;
 unsigned int ip6t_do_table (struct sk_buff*,struct nf_hook_state const*,int ) ;
 int ipv6_addr_equal (int *,struct in6_addr*) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int memcpy (struct in6_addr*,int *,int) ;

__attribute__((used)) static unsigned int
ip6t_mangle_out(struct sk_buff *skb, const struct nf_hook_state *state)
{
 unsigned int ret;
 struct in6_addr saddr, daddr;
 u_int8_t hop_limit;
 u_int32_t flowlabel, mark;
 int err;


 memcpy(&saddr, &ipv6_hdr(skb)->saddr, sizeof(saddr));
 memcpy(&daddr, &ipv6_hdr(skb)->daddr, sizeof(daddr));
 mark = skb->mark;
 hop_limit = ipv6_hdr(skb)->hop_limit;


 flowlabel = *((u_int32_t *)ipv6_hdr(skb));

 ret = ip6t_do_table(skb, state, state->net->ipv6.ip6table_mangle);

 if (ret != NF_DROP && ret != NF_STOLEN &&
     (!ipv6_addr_equal(&ipv6_hdr(skb)->saddr, &saddr) ||
      !ipv6_addr_equal(&ipv6_hdr(skb)->daddr, &daddr) ||
      skb->mark != mark ||
      ipv6_hdr(skb)->hop_limit != hop_limit ||
      flowlabel != *((u_int32_t *)ipv6_hdr(skb)))) {
  err = ip6_route_me_harder(state->net, skb);
  if (err < 0)
   ret = NF_DROP_ERR(err);
 }

 return ret;
}
