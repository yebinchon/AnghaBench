
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clusterip_config {int rcu; int refcount; } ;


 int call_rcu (int *,int ) ;
 int clusterip_config_rcu_free ;
 scalar_t__ refcount_dec_and_test (int *) ;

__attribute__((used)) static inline void
clusterip_config_put(struct clusterip_config *c)
{
 if (refcount_dec_and_test(&c->refcount))
  call_rcu(&c->rcu, clusterip_config_rcu_free);
}
