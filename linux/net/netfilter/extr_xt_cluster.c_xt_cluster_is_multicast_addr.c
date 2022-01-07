
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int daddr; } ;
struct TYPE_3__ {int daddr; } ;




 int WARN_ON (int) ;
 TYPE_2__* ip_hdr (struct sk_buff const*) ;
 int ipv4_is_multicast (int ) ;
 int ipv6_addr_is_multicast (int *) ;
 TYPE_1__* ipv6_hdr (struct sk_buff const*) ;

__attribute__((used)) static inline bool
xt_cluster_is_multicast_addr(const struct sk_buff *skb, u_int8_t family)
{
 bool is_multicast = 0;

 switch(family) {
 case 129:
  is_multicast = ipv4_is_multicast(ip_hdr(skb)->daddr);
  break;
 case 128:
  is_multicast = ipv6_addr_is_multicast(&ipv6_hdr(skb)->daddr);
  break;
 default:
  WARN_ON(1);
  break;
 }
 return is_multicast;
}
