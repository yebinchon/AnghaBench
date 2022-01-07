
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_zone {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conncount_list {int list_lock; } ;
struct net {int dummy; } ;


 int __nf_conncount_add (struct net*,struct nf_conncount_list*,struct nf_conntrack_tuple const*,struct nf_conntrack_zone const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int nf_conncount_add(struct net *net,
       struct nf_conncount_list *list,
       const struct nf_conntrack_tuple *tuple,
       const struct nf_conntrack_zone *zone)
{
 int ret;


 spin_lock_bh(&list->list_lock);
 ret = __nf_conncount_add(net, list, tuple, zone);
 spin_unlock_bh(&list->list_lock);

 return ret;
}
