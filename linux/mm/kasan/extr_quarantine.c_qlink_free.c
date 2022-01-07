
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlist_node {int dummy; } ;
struct kmem_cache {int dummy; } ;


 int CONFIG_SLAB ;
 scalar_t__ IS_ENABLED (int ) ;
 int _THIS_IP_ ;
 int ___cache_free (struct kmem_cache*,void*,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 void* qlink_to_object (struct qlist_node*,struct kmem_cache*) ;

__attribute__((used)) static void qlink_free(struct qlist_node *qlink, struct kmem_cache *cache)
{
 void *object = qlink_to_object(qlink, cache);
 unsigned long flags;

 if (IS_ENABLED(CONFIG_SLAB))
  local_irq_save(flags);

 ___cache_free(cache, object, _THIS_IP_);

 if (IS_ENABLED(CONFIG_SLAB))
  local_irq_restore(flags);
}
