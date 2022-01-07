
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct bitmap_ip {int netmask; int last_ip; int first_ip; } ;


 int IPSET_ATTR_IP ;
 int IPSET_ATTR_IP_TO ;
 int IPSET_ATTR_NETMASK ;
 int htonl (int ) ;
 scalar_t__ nla_put_ipaddr4 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;

__attribute__((used)) static inline int
bitmap_ip_do_head(struct sk_buff *skb, const struct bitmap_ip *map)
{
 return nla_put_ipaddr4(skb, IPSET_ATTR_IP, htonl(map->first_ip)) ||
        nla_put_ipaddr4(skb, IPSET_ATTR_IP_TO, htonl(map->last_ip)) ||
        (map->netmask != 32 &&
  nla_put_u8(skb, IPSET_ATTR_NETMASK, map->netmask));
}
