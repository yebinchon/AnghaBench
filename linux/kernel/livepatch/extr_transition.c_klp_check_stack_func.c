
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klp_ops {int func_stack; } ;
struct klp_func {unsigned long new_size; unsigned long old_size; scalar_t__ new_func; scalar_t__ old_func; } ;


 int EAGAIN ;
 scalar_t__ KLP_UNPATCHED ;
 struct klp_ops* klp_find_ops (scalar_t__) ;
 scalar_t__ klp_target_state ;
 scalar_t__ list_is_singular (int *) ;
 struct klp_func* list_next_entry (struct klp_func*,int ) ;
 int stack_node ;

__attribute__((used)) static int klp_check_stack_func(struct klp_func *func, unsigned long *entries,
    unsigned int nr_entries)
{
 unsigned long func_addr, func_size, address;
 struct klp_ops *ops;
 int i;

 for (i = 0; i < nr_entries; i++) {
  address = entries[i];

  if (klp_target_state == KLP_UNPATCHED) {




   func_addr = (unsigned long)func->new_func;
   func_size = func->new_size;
  } else {




   ops = klp_find_ops(func->old_func);

   if (list_is_singular(&ops->func_stack)) {

    func_addr = (unsigned long)func->old_func;
    func_size = func->old_size;
   } else {

    struct klp_func *prev;

    prev = list_next_entry(func, stack_node);
    func_addr = (unsigned long)prev->new_func;
    func_size = prev->new_size;
   }
  }

  if (address >= func_addr && address < func_addr + func_size)
   return -EAGAIN;
 }

 return 0;
}
