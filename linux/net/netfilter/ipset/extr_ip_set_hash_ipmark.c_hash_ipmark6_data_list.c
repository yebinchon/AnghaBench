
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int in6; } ;
struct hash_ipmark6_elem {int mark; TYPE_1__ ip; } ;


 int IPSET_ATTR_IP ;
 int IPSET_ATTR_MARK ;
 int htonl (int ) ;
 scalar_t__ nla_put_ipaddr6 (struct sk_buff*,int ,int *) ;
 scalar_t__ nla_put_net32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static bool
hash_ipmark6_data_list(struct sk_buff *skb,
         const struct hash_ipmark6_elem *data)
{
 if (nla_put_ipaddr6(skb, IPSET_ATTR_IP, &data->ip.in6) ||
     nla_put_net32(skb, IPSET_ATTR_MARK, htonl(data->mark)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return 1;
}
