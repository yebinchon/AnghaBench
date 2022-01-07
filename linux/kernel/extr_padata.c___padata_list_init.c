
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_list {int lock; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void __padata_list_init(struct padata_list *pd_list)
{
 INIT_LIST_HEAD(&pd_list->list);
 spin_lock_init(&pd_list->lock);
}
