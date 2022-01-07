
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int call_int_hook (int ,int ,struct kern_ipc_perm*,int) ;
 int shm_shmctl ;

int security_shm_shmctl(struct kern_ipc_perm *shp, int cmd)
{
 return call_int_hook(shm_shmctl, 0, shp, cmd);
}
