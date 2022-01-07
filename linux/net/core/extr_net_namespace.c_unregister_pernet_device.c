
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* next; } ;
struct pernet_operations {TYPE_1__ list; } ;


 int down_write (int *) ;
 TYPE_1__* first_device ;
 int pernet_ops_rwsem ;
 int unregister_pernet_operations (struct pernet_operations*) ;
 int up_write (int *) ;

void unregister_pernet_device(struct pernet_operations *ops)
{
 down_write(&pernet_ops_rwsem);
 if (&ops->list == first_device)
  first_device = first_device->next;
 unregister_pernet_operations(ops);
 up_write(&pernet_ops_rwsem);
}
