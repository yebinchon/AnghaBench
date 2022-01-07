
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hash_ipport4_elem {int proto; int port; int ip; } ;


 int IPSET_ATTR_IP ;
 int IPSET_ATTR_PORT ;
 int IPSET_ATTR_PROTO ;
 scalar_t__ nla_put_ipaddr4 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_net16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static bool
hash_ipport4_data_list(struct sk_buff *skb,
         const struct hash_ipport4_elem *data)
{
 if (nla_put_ipaddr4(skb, IPSET_ATTR_IP, data->ip) ||
     nla_put_net16(skb, IPSET_ATTR_PORT, data->port) ||
     nla_put_u8(skb, IPSET_ATTR_PROTO, data->proto))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return 1;
}
