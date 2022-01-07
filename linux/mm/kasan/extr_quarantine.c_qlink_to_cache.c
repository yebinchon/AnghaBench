
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlist_node {int dummy; } ;
struct kmem_cache {int dummy; } ;
struct TYPE_2__ {struct kmem_cache* slab_cache; } ;


 TYPE_1__* virt_to_head_page (struct qlist_node*) ;

__attribute__((used)) static struct kmem_cache *qlink_to_cache(struct qlist_node *qlink)
{
 return virt_to_head_page(qlink)->slab_cache;
}
