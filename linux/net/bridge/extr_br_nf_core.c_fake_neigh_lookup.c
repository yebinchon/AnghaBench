
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct neighbour {int dummy; } ;
struct dst_entry {int dummy; } ;



__attribute__((used)) static struct neighbour *fake_neigh_lookup(const struct dst_entry *dst,
        struct sk_buff *skb,
        const void *daddr)
{
 return ((void*)0);
}
