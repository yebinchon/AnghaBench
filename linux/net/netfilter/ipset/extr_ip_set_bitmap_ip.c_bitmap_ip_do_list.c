
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct bitmap_ip {int hosts; scalar_t__ first_ip; } ;


 int IPSET_ATTR_IP ;
 int htonl (scalar_t__) ;
 int nla_put_ipaddr4 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline int
bitmap_ip_do_list(struct sk_buff *skb, const struct bitmap_ip *map, u32 id,
    size_t dsize)
{
 return nla_put_ipaddr4(skb, IPSET_ATTR_IP,
   htonl(map->first_ip + id * map->hosts));
}
