
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int refcount; } ;


 int refcount_inc_not_zero (int *) ;

bool ipc_rcu_getref(struct kern_ipc_perm *ptr)
{
 return refcount_inc_not_zero(&ptr->refcount);
}
