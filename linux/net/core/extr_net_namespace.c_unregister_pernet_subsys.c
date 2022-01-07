
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int dummy; } ;


 int down_write (int *) ;
 int pernet_ops_rwsem ;
 int unregister_pernet_operations (struct pernet_operations*) ;
 int up_write (int *) ;

void unregister_pernet_subsys(struct pernet_operations *ops)
{
 down_write(&pernet_ops_rwsem);
 unregister_pernet_operations(ops);
 up_write(&pernet_ops_rwsem);
}
