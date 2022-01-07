
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct clusterip_config {int entries; int refcount; int pde; } ;
typedef int __be32 ;


 struct clusterip_config* __clusterip_config_find (struct net*,int ) ;
 int clusterip_config_put (struct clusterip_config*) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int refcount_inc_not_zero (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct clusterip_config *
clusterip_config_find_get(struct net *net, __be32 clusterip, int entry)
{
 struct clusterip_config *c;

 rcu_read_lock_bh();
 c = __clusterip_config_find(net, clusterip);
 if (c) {





  if (unlikely(!refcount_inc_not_zero(&c->refcount)))
   c = ((void*)0);
  else if (entry) {
   if (unlikely(!refcount_inc_not_zero(&c->entries))) {
    clusterip_config_put(c);
    c = ((void*)0);
   }
  }
 }
 rcu_read_unlock_bh();

 return c;
}
