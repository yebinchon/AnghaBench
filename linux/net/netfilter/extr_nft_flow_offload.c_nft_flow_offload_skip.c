
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ip_options {int optlen; } ;
struct TYPE_2__ {struct ip_options opt; } ;


 TYPE_1__* IPCB (struct sk_buff*) ;
 int NFPROTO_IPV4 ;
 scalar_t__ skb_sec_path (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static bool nft_flow_offload_skip(struct sk_buff *skb, int family)
{
 if (skb_sec_path(skb))
  return 1;

 if (family == NFPROTO_IPV4) {
  const struct ip_options *opt;

  opt = &(IPCB(skb)->opt);

  if (unlikely(opt->optlen))
   return 1;
 }

 return 0;
}
