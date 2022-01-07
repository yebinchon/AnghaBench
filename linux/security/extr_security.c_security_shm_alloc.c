
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int call_int_hook (int ,int ,struct kern_ipc_perm*) ;
 int lsm_ipc_alloc (struct kern_ipc_perm*) ;
 int security_shm_free (struct kern_ipc_perm*) ;
 int shm_alloc_security ;
 scalar_t__ unlikely (int) ;

int security_shm_alloc(struct kern_ipc_perm *shp)
{
 int rc = lsm_ipc_alloc(shp);

 if (unlikely(rc))
  return rc;
 rc = call_int_hook(shm_alloc_security, 0, shp);
 if (unlikely(rc))
  security_shm_free(shp);
 return rc;
}
