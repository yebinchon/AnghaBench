
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist {void (* get ) (struct klist_node*) ;void (* put ) (struct klist_node*) ;int k_lock; int k_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

void klist_init(struct klist *k, void (*get)(struct klist_node *),
  void (*put)(struct klist_node *))
{
 INIT_LIST_HEAD(&k->k_list);
 spin_lock_init(&k->k_lock);
 k->get = get;
 k->put = put;
}
