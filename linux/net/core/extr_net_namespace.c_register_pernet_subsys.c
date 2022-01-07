
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pernet_operations {int dummy; } ;


 int down_write (int *) ;
 int first_device ;
 int pernet_ops_rwsem ;
 int register_pernet_operations (int ,struct pernet_operations*) ;
 int up_write (int *) ;

int register_pernet_subsys(struct pernet_operations *ops)
{
 int error;
 down_write(&pernet_ops_rwsem);
 error = register_pernet_operations(first_device, ops);
 up_write(&pernet_ops_rwsem);
 return error;
}
