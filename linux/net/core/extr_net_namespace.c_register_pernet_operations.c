
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int* id; } ;
struct list_head {int dummy; } ;


 int GFP_KERNEL ;
 int MIN_PERNET_OPS_ID ;
 int __register_pernet_operations (struct list_head*,struct pernet_operations*) ;
 int ida_alloc_min (int *,int ,int ) ;
 int ida_free (int *,int) ;
 int max (int ,int) ;
 int max_gen_ptrs ;
 int net_generic_ids ;
 int rcu_barrier () ;

__attribute__((used)) static int register_pernet_operations(struct list_head *list,
          struct pernet_operations *ops)
{
 int error;

 if (ops->id) {
  error = ida_alloc_min(&net_generic_ids, MIN_PERNET_OPS_ID,
    GFP_KERNEL);
  if (error < 0)
   return error;
  *ops->id = error;
  max_gen_ptrs = max(max_gen_ptrs, *ops->id + 1);
 }
 error = __register_pernet_operations(list, ops);
 if (error) {
  rcu_barrier();
  if (ops->id)
   ida_free(&net_generic_ids, *ops->id);
 }

 return error;
}
