
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hash_ip4_elem {int ip; } ;


 int IPSET_ATTR_IP ;
 scalar_t__ nla_put_ipaddr4 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static bool
hash_ip4_data_list(struct sk_buff *skb, const struct hash_ip4_elem *e)
{
 if (nla_put_ipaddr4(skb, IPSET_ATTR_IP, e->ip))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return 1;
}
