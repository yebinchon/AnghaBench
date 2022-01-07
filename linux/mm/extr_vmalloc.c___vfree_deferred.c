
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfree_deferred {int wq; int list; } ;
struct llist_node {int dummy; } ;


 scalar_t__ llist_add (struct llist_node*,int *) ;
 struct vfree_deferred* raw_cpu_ptr (int *) ;
 int schedule_work (int *) ;
 int vfree_deferred ;

__attribute__((used)) static inline void __vfree_deferred(const void *addr)
{






 struct vfree_deferred *p = raw_cpu_ptr(&vfree_deferred);

 if (llist_add((struct llist_node *)addr, &p->list))
  schedule_work(&p->wq);
}
