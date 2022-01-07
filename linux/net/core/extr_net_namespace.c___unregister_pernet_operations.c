
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pernet_operations {int list; } ;
struct TYPE_2__ {int exit_list; } ;


 int LIST_HEAD (int ) ;
 TYPE_1__ init_net ;
 int init_net_initialized ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int net_exit_list ;
 int ops_exit_list (struct pernet_operations*,int *) ;
 int ops_free_list (struct pernet_operations*,int *) ;
 int ops_pre_exit_list (struct pernet_operations*,int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void __unregister_pernet_operations(struct pernet_operations *ops)
{
 if (!init_net_initialized) {
  list_del(&ops->list);
 } else {
  LIST_HEAD(net_exit_list);
  list_add(&init_net.exit_list, &net_exit_list);
  ops_pre_exit_list(ops, &net_exit_list);
  synchronize_rcu();
  ops_exit_list(ops, &net_exit_list);
  ops_free_list(ops, &net_exit_list);
 }
}
