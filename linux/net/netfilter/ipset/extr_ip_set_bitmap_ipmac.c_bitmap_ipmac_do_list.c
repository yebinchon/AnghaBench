
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct bitmap_ipmac_elem {scalar_t__ filled; int ether; } ;
struct bitmap_ipmac {scalar_t__ first_ip; int extensions; } ;


 int ETH_ALEN ;
 int IPSET_ATTR_ETHER ;
 int IPSET_ATTR_IP ;
 scalar_t__ MAC_FILLED ;
 struct bitmap_ipmac_elem* get_const_elem (int ,scalar_t__,size_t) ;
 int htonl (scalar_t__) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_ipaddr4 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline int
bitmap_ipmac_do_list(struct sk_buff *skb, const struct bitmap_ipmac *map,
       u32 id, size_t dsize)
{
 const struct bitmap_ipmac_elem *elem =
  get_const_elem(map->extensions, id, dsize);

 return nla_put_ipaddr4(skb, IPSET_ATTR_IP,
          htonl(map->first_ip + id)) ||
        (elem->filled == MAC_FILLED &&
  nla_put(skb, IPSET_ATTR_ETHER, ETH_ALEN, elem->ether));
}
