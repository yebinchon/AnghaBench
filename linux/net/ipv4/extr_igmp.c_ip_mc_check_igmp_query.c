
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct igmpv3_query {int dummy; } ;
struct igmphdr {int dummy; } ;
struct TYPE_4__ {int group; } ;
struct TYPE_3__ {scalar_t__ daddr; } ;


 int EINVAL ;
 int INADDR_ALLHOSTS_GROUP ;
 scalar_t__ htonl (int ) ;
 TYPE_2__* igmp_hdr (struct sk_buff*) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int ip_mc_may_pull (struct sk_buff*,unsigned int) ;
 unsigned int ip_transport_len (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;

__attribute__((used)) static int ip_mc_check_igmp_query(struct sk_buff *skb)
{
 unsigned int transport_len = ip_transport_len(skb);
 unsigned int len;


 if (transport_len != sizeof(struct igmphdr)) {

  if (transport_len < sizeof(struct igmpv3_query))
   return -EINVAL;

  len = skb_transport_offset(skb) + sizeof(struct igmpv3_query);
  if (!ip_mc_may_pull(skb, len))
   return -EINVAL;
 }




 if (!igmp_hdr(skb)->group &&
     ip_hdr(skb)->daddr != htonl(INADDR_ALLHOSTS_GROUP))
  return -EINVAL;

 return 0;
}
