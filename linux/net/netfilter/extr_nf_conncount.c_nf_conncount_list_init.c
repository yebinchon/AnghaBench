
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conncount_list {scalar_t__ count; int head; int list_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

void nf_conncount_list_init(struct nf_conncount_list *list)
{
 spin_lock_init(&list->list_lock);
 INIT_LIST_HEAD(&list->head);
 list->count = 0;
}
