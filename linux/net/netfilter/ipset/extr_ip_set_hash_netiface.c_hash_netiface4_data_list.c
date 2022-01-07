
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct hash_netiface4_elem {int iface; int cidr; int ip; scalar_t__ nomatch; scalar_t__ physdev; } ;


 int IPSET_ATTR_CADT_FLAGS ;
 int IPSET_ATTR_CIDR ;
 int IPSET_ATTR_IFACE ;
 int IPSET_ATTR_IP ;
 int IPSET_FLAG_NOMATCH ;
 int IPSET_FLAG_PHYSDEV ;
 int htonl (int ) ;
 scalar_t__ nla_put_ipaddr4 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_net32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static bool
hash_netiface4_data_list(struct sk_buff *skb,
    const struct hash_netiface4_elem *data)
{
 u32 flags = data->physdev ? IPSET_FLAG_PHYSDEV : 0;

 if (data->nomatch)
  flags |= IPSET_FLAG_NOMATCH;
 if (nla_put_ipaddr4(skb, IPSET_ATTR_IP, data->ip) ||
     nla_put_u8(skb, IPSET_ATTR_CIDR, data->cidr) ||
     nla_put_string(skb, IPSET_ATTR_IFACE, data->iface) ||
     (flags &&
      nla_put_net32(skb, IPSET_ATTR_CADT_FLAGS, htonl(flags))))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return 1;
}
