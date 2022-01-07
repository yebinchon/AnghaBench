
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conncount_data {int dummy; } ;
struct net {int dummy; } ;


 unsigned int count_tree (struct net*,struct nf_conncount_data*,int const*,struct nf_conntrack_tuple const*,struct nf_conntrack_zone const*) ;

unsigned int nf_conncount_count(struct net *net,
    struct nf_conncount_data *data,
    const u32 *key,
    const struct nf_conntrack_tuple *tuple,
    const struct nf_conntrack_zone *zone)
{
 return count_tree(net, data, key, tuple, zone);
}
