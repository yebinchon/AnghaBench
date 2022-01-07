
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int in6; } ;
struct TYPE_3__ {int in6; } ;
struct hash_ipportip6_elem {int proto; int port; TYPE_2__ ip2; TYPE_1__ ip; } ;


 int IPSET_ATTR_IP ;
 int IPSET_ATTR_IP2 ;
 int IPSET_ATTR_PORT ;
 int IPSET_ATTR_PROTO ;
 scalar_t__ nla_put_ipaddr6 (struct sk_buff*,int ,int *) ;
 scalar_t__ nla_put_net16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static bool
hash_ipportip6_data_list(struct sk_buff *skb,
    const struct hash_ipportip6_elem *data)
{
 if (nla_put_ipaddr6(skb, IPSET_ATTR_IP, &data->ip.in6) ||
     nla_put_ipaddr6(skb, IPSET_ATTR_IP2, &data->ip2.in6) ||
     nla_put_net16(skb, IPSET_ATTR_PORT, data->port) ||
     nla_put_u8(skb, IPSET_ATTR_PROTO, data->proto))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return 1;
}
