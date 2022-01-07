
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;






 int SECCLASS_SYSTEM ;
 int SECINITSID_KERNEL ;





 int SHM__ASSOCIATE ;
 int SHM__DESTROY ;
 int SHM__GETATTR ;
 int SHM__LOCK ;
 int SHM__SETATTR ;
 int SYSTEM__IPC_INFO ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int ipc_has_perm (struct kern_ipc_perm*,int) ;
 int selinux_state ;

__attribute__((used)) static int selinux_shm_shmctl(struct kern_ipc_perm *shp, int cmd)
{
 int perms;
 int err;

 switch (cmd) {
 case 136:
 case 132:

  return avc_has_perm(&selinux_state,
        current_sid(), SECINITSID_KERNEL,
        SECCLASS_SYSTEM, SYSTEM__IPC_INFO, ((void*)0));
 case 133:
 case 130:
 case 129:
  perms = SHM__GETATTR | SHM__ASSOCIATE;
  break;
 case 134:
  perms = SHM__SETATTR;
  break;
 case 131:
 case 128:
  perms = SHM__LOCK;
  break;
 case 135:
  perms = SHM__DESTROY;
  break;
 default:
  return 0;
 }

 err = ipc_has_perm(shp, perms);
 return err;
}
