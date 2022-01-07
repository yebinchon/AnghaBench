
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int * security; } ;


 int call_void_hook (int ,struct kern_ipc_perm*) ;
 int kfree (int *) ;
 int shm_free_security ;

void security_shm_free(struct kern_ipc_perm *shp)
{
 call_void_hook(shm_free_security, shp);
 kfree(shp->security);
 shp->security = ((void*)0);
}
