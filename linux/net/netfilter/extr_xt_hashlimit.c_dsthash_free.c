
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_hashlimit_htable {int count; } ;
struct dsthash_ent {int rcu; int node; } ;


 int call_rcu (int *,int ) ;
 int dsthash_free_rcu ;
 int hlist_del_rcu (int *) ;

__attribute__((used)) static inline void
dsthash_free(struct xt_hashlimit_htable *ht, struct dsthash_ent *ent)
{
 hlist_del_rcu(&ent->node);
 call_rcu(&ent->rcu, dsthash_free_rcu);
 ht->count--;
}
