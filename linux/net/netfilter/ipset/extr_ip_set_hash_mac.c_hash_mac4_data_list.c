
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hash_mac4_elem {int ether; } ;


 int ETH_ALEN ;
 int IPSET_ATTR_ETHER ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static inline bool
hash_mac4_data_list(struct sk_buff *skb, const struct hash_mac4_elem *e)
{
 if (nla_put(skb, IPSET_ATTR_ETHER, ETH_ALEN, e->ether))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return 1;
}
