
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kern_ipc_perm {int dummy; } ;
 int SECCLASS_SYSTEM ;
 int SECINITSID_KERNEL ;



 int SEM__ASSOCIATE ;
 int SEM__DESTROY ;
 int SEM__GETATTR ;
 int SEM__READ ;
 int SEM__SETATTR ;
 int SEM__WRITE ;


 int SYSTEM__IPC_INFO ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int ipc_has_perm (struct kern_ipc_perm*,int) ;
 int selinux_state ;

__attribute__((used)) static int selinux_sem_semctl(struct kern_ipc_perm *sma, int cmd)
{
 int err;
 u32 perms;

 switch (cmd) {
 case 136:
 case 132:

  return avc_has_perm(&selinux_state,
        current_sid(), SECINITSID_KERNEL,
        SECCLASS_SYSTEM, SYSTEM__IPC_INFO, ((void*)0));
 case 139:
 case 140:
 case 137:
  perms = SEM__GETATTR;
  break;
 case 138:
 case 141:
  perms = SEM__READ;
  break;
 case 128:
 case 129:
  perms = SEM__WRITE;
  break;
 case 135:
  perms = SEM__DESTROY;
  break;
 case 134:
  perms = SEM__SETATTR;
  break;
 case 133:
 case 131:
 case 130:
  perms = SEM__GETATTR | SEM__ASSOCIATE;
  break;
 default:
  return 0;
 }

 err = ipc_has_perm(sma, perms);
 return err;
}
