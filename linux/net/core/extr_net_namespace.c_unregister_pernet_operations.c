
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int * id; } ;


 int __unregister_pernet_operations (struct pernet_operations*) ;
 int ida_free (int *,int ) ;
 int net_generic_ids ;
 int rcu_barrier () ;

__attribute__((used)) static void unregister_pernet_operations(struct pernet_operations *ops)
{
 __unregister_pernet_operations(ops);
 rcu_barrier();
 if (ops->id)
  ida_free(&net_generic_ids, *ops->id);
}
