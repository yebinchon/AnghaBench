
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int lock; } ;


 int assert_spin_locked (int *) ;

__attribute__((used)) static inline void ipc_assert_locked_object(struct kern_ipc_perm *perm)
{
 assert_spin_locked(&perm->lock);
}
