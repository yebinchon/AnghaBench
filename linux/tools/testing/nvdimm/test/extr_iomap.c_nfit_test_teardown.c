
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; } ;


 TYPE_1__ iomap_ops ;
 int list_del_rcu (int *) ;
 int synchronize_rcu () ;

void nfit_test_teardown(void)
{
 list_del_rcu(&iomap_ops.list);
 synchronize_rcu();
}
