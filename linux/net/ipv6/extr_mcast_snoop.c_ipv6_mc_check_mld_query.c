
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mld_msg {int mld_mca; } ;
struct mld2_query {int dummy; } ;
struct TYPE_2__ {int daddr; int saddr; } ;


 int EINVAL ;
 int IPV6_ADDR_LINKLOCAL ;
 scalar_t__ ipv6_addr_any (int *) ;
 int ipv6_addr_is_ll_all_nodes (int *) ;
 int ipv6_addr_type (int *) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int ipv6_mc_may_pull (struct sk_buff*,unsigned int) ;
 unsigned int ipv6_transport_len (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static int ipv6_mc_check_mld_query(struct sk_buff *skb)
{
 unsigned int transport_len = ipv6_transport_len(skb);
 struct mld_msg *mld;
 unsigned int len;


 if (!(ipv6_addr_type(&ipv6_hdr(skb)->saddr) & IPV6_ADDR_LINKLOCAL))
  return -EINVAL;


 if (transport_len != sizeof(struct mld_msg)) {

  if (transport_len < sizeof(struct mld2_query))
   return -EINVAL;

  len = skb_transport_offset(skb) + sizeof(struct mld2_query);
  if (!ipv6_mc_may_pull(skb, len))
   return -EINVAL;
 }

 mld = (struct mld_msg *)skb_transport_header(skb);




 if (ipv6_addr_any(&mld->mld_mca) &&
     !ipv6_addr_is_ll_all_nodes(&ipv6_hdr(skb)->daddr))
  return -EINVAL;

 return 0;
}
