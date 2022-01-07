
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct net {int dummy; } ;


 struct nf_conntrack_tuple_hash* __nf_conntrack_find_get (struct net*,struct nf_conntrack_zone const*,struct nf_conntrack_tuple const*,int ) ;
 int hash_conntrack_raw (struct nf_conntrack_tuple const*,struct net*) ;

struct nf_conntrack_tuple_hash *
nf_conntrack_find_get(struct net *net, const struct nf_conntrack_zone *zone,
        const struct nf_conntrack_tuple *tuple)
{
 return __nf_conntrack_find_get(net, zone, tuple,
           hash_conntrack_raw(tuple, net));
}
