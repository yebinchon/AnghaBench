
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int ipc_unlock_object (struct kern_ipc_perm*) ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline void ipc_unlock(struct kern_ipc_perm *perm)
{
 ipc_unlock_object(perm);
 rcu_read_unlock();
}
