
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slob_rcu {void* size; } ;
struct rcu_head {int dummy; } ;


 int __kmem_cache_free (void*,void*) ;

__attribute__((used)) static void kmem_rcu_free(struct rcu_head *head)
{
 struct slob_rcu *slob_rcu = (struct slob_rcu *)head;
 void *b = (void *)slob_rcu - (slob_rcu->size - sizeof(struct slob_rcu));

 __kmem_cache_free(b, slob_rcu->size);
}
