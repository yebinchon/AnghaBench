
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcu; } ;
struct mfc6_cache {TYPE_1__ _c; } ;


 int call_rcu (int *,int ) ;
 int ip6mr_cache_free_rcu ;

__attribute__((used)) static inline void ip6mr_cache_free(struct mfc6_cache *c)
{
 call_rcu(&c->_c.rcu, ip6mr_cache_free_rcu);
}
