
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int list; } ;
struct list_head {int dummy; } ;


 int init_net ;
 int init_net_initialized ;
 int list_add_tail (int *,struct list_head*) ;
 int ops_init (struct pernet_operations*,int *) ;

__attribute__((used)) static int __register_pernet_operations(struct list_head *list,
     struct pernet_operations *ops)
{
 if (!init_net_initialized) {
  list_add_tail(&ops->list, list);
  return 0;
 }

 return ops_init(ops, &init_net);
}
