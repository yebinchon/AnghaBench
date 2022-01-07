
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ip_vs_iphdr {int protocol; int len; } ;
typedef int _ports ;
typedef int __be16 ;





 int ip_vs_iph_inverse (struct ip_vs_iphdr*) ;
 int likely (int) ;
 int * skb_header_pointer (struct sk_buff const*,int ,int,int **) ;
 int unlikely (int) ;

__attribute__((used)) static inline __be16
ip_vs_mh_get_port(const struct sk_buff *skb, struct ip_vs_iphdr *iph)
{
 __be16 _ports[2], *ports;






 switch (iph->protocol) {
 case 129:
 case 128:
 case 130:
  ports = skb_header_pointer(skb, iph->len, sizeof(_ports),
        &_ports);
  if (unlikely(!ports))
   return 0;

  if (likely(!ip_vs_iph_inverse(iph)))
   return ports[0];
  else
   return ports[1];
 default:
  return 0;
 }
}
