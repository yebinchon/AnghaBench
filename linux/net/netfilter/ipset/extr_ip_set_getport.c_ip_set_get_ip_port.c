
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
typedef int __be16 ;






 int ip_set_get_ip4_port (struct sk_buff const*,int,int *,int*) ;
 int ip_set_get_ip6_port (struct sk_buff const*,int,int *,int*) ;

bool
ip_set_get_ip_port(const struct sk_buff *skb, u8 pf, bool src, __be16 *port)
{
 bool ret;
 u8 proto;

 switch (pf) {
 case 129:
  ret = ip_set_get_ip4_port(skb, src, port, &proto);
  break;
 case 128:
  ret = ip_set_get_ip6_port(skb, src, port, &proto);
  break;
 default:
  return 0;
 }
 if (!ret)
  return ret;
 switch (proto) {
 case 131:
 case 130:
  return 1;
 default:
  return 0;
 }
}
