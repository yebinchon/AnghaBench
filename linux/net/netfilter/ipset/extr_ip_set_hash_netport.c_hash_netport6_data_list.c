
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int in6; } ;
struct hash_netport6_elem {scalar_t__ proto; scalar_t__ cidr; int port; TYPE_1__ ip; scalar_t__ nomatch; } ;


 int IPSET_ATTR_CADT_FLAGS ;
 int IPSET_ATTR_CIDR ;
 int IPSET_ATTR_IP ;
 int IPSET_ATTR_PORT ;
 int IPSET_ATTR_PROTO ;
 scalar_t__ IPSET_FLAG_NOMATCH ;
 int htonl (scalar_t__) ;
 scalar_t__ nla_put_ipaddr6 (struct sk_buff*,int ,int *) ;
 scalar_t__ nla_put_net16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_net32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,scalar_t__) ;

__attribute__((used)) static bool
hash_netport6_data_list(struct sk_buff *skb,
   const struct hash_netport6_elem *data)
{
 u32 flags = data->nomatch ? IPSET_FLAG_NOMATCH : 0;

 if (nla_put_ipaddr6(skb, IPSET_ATTR_IP, &data->ip.in6) ||
     nla_put_net16(skb, IPSET_ATTR_PORT, data->port) ||
     nla_put_u8(skb, IPSET_ATTR_CIDR, data->cidr + 1) ||
     nla_put_u8(skb, IPSET_ATTR_PROTO, data->proto) ||
     (flags &&
      nla_put_net32(skb, IPSET_ATTR_CADT_FLAGS, htonl(flags))))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return 1;
}
