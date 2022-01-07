
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hash_ipmark4_elem {int mark; int ip; } ;


 int IPSET_ATTR_IP ;
 int IPSET_ATTR_MARK ;
 int htonl (int ) ;
 scalar_t__ nla_put_ipaddr4 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_net32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static bool
hash_ipmark4_data_list(struct sk_buff *skb,
         const struct hash_ipmark4_elem *data)
{
 if (nla_put_ipaddr4(skb, IPSET_ATTR_IP, data->ip) ||
     nla_put_net32(skb, IPSET_ATTR_MARK, htonl(data->mark)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return 1;
}
