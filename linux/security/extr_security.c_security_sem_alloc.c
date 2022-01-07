
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int call_int_hook (int ,int ,struct kern_ipc_perm*) ;
 int lsm_ipc_alloc (struct kern_ipc_perm*) ;
 int security_sem_free (struct kern_ipc_perm*) ;
 int sem_alloc_security ;
 scalar_t__ unlikely (int) ;

int security_sem_alloc(struct kern_ipc_perm *sma)
{
 int rc = lsm_ipc_alloc(sma);

 if (unlikely(rc))
  return rc;
 rc = call_int_hook(sem_alloc_security, 0, sma);
 if (unlikely(rc))
  security_sem_free(sma);
 return rc;
}
