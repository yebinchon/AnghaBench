
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct list_set {size_t size; } ;
struct ip_set {size_t ext_size; size_t ref; size_t elements; int dsize; struct list_set* data; } ;


 int EMSGSIZE ;
 int IPSET_ATTR_DATA ;
 int IPSET_ATTR_ELEMENTS ;
 int IPSET_ATTR_MEMSIZE ;
 int IPSET_ATTR_REFERENCES ;
 int IPSET_ATTR_SIZE ;
 int htonl (size_t) ;
 int ip_set_put_flags (struct sk_buff*,struct ip_set*) ;
 size_t list_set_memsize (struct list_set const*,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put_net32 (struct sk_buff*,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
list_set_head(struct ip_set *set, struct sk_buff *skb)
{
 const struct list_set *map = set->data;
 struct nlattr *nested;
 size_t memsize = list_set_memsize(map, set->dsize) + set->ext_size;

 nested = nla_nest_start(skb, IPSET_ATTR_DATA);
 if (!nested)
  goto nla_put_failure;
 if (nla_put_net32(skb, IPSET_ATTR_SIZE, htonl(map->size)) ||
     nla_put_net32(skb, IPSET_ATTR_REFERENCES, htonl(set->ref)) ||
     nla_put_net32(skb, IPSET_ATTR_MEMSIZE, htonl(memsize)) ||
     nla_put_net32(skb, IPSET_ATTR_ELEMENTS, htonl(set->elements)))
  goto nla_put_failure;
 if (unlikely(ip_set_put_flags(skb, set)))
  goto nla_put_failure;
 nla_nest_end(skb, nested);

 return 0;
nla_put_failure:
 return -EMSGSIZE;
}
