
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct hash_net4_elem {int cidr; int ip; scalar_t__ nomatch; } ;


 int IPSET_ATTR_CADT_FLAGS ;
 int IPSET_ATTR_CIDR ;
 int IPSET_ATTR_IP ;
 scalar_t__ IPSET_FLAG_NOMATCH ;
 int htonl (scalar_t__) ;
 scalar_t__ nla_put_ipaddr4 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_net32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static bool
hash_net4_data_list(struct sk_buff *skb, const struct hash_net4_elem *data)
{
 u32 flags = data->nomatch ? IPSET_FLAG_NOMATCH : 0;

 if (nla_put_ipaddr4(skb, IPSET_ATTR_IP, data->ip) ||
     nla_put_u8(skb, IPSET_ATTR_CIDR, data->cidr) ||
     (flags &&
      nla_put_net32(skb, IPSET_ATTR_CADT_FLAGS, htonl(flags))))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return 1;
}
