
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int call_int_hook (int ,int ,struct kern_ipc_perm*) ;
 int lsm_ipc_alloc (struct kern_ipc_perm*) ;
 int msg_queue_alloc_security ;
 int security_msg_queue_free (struct kern_ipc_perm*) ;
 scalar_t__ unlikely (int) ;

int security_msg_queue_alloc(struct kern_ipc_perm *msq)
{
 int rc = lsm_ipc_alloc(msq);

 if (unlikely(rc))
  return rc;
 rc = call_int_hook(msg_queue_alloc_security, 0, msq);
 if (unlikely(rc))
  security_msg_queue_free(msq);
 return rc;
}
