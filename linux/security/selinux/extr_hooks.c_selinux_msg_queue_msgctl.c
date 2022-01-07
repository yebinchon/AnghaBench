
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;






 int MSGQ__ASSOCIATE ;
 int MSGQ__DESTROY ;
 int MSGQ__GETATTR ;
 int MSGQ__SETATTR ;



 int SECCLASS_SYSTEM ;
 int SECINITSID_KERNEL ;
 int SYSTEM__IPC_INFO ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 int ipc_has_perm (struct kern_ipc_perm*,int) ;
 int selinux_state ;

__attribute__((used)) static int selinux_msg_queue_msgctl(struct kern_ipc_perm *msq, int cmd)
{
 int err;
 int perms;

 switch (cmd) {
 case 134:
 case 130:

  return avc_has_perm(&selinux_state,
        current_sid(), SECINITSID_KERNEL,
        SECCLASS_SYSTEM, SYSTEM__IPC_INFO, ((void*)0));
 case 131:
 case 129:
 case 128:
  perms = MSGQ__GETATTR | MSGQ__ASSOCIATE;
  break;
 case 132:
  perms = MSGQ__SETATTR;
  break;
 case 133:
  perms = MSGQ__DESTROY;
  break;
 default:
  return 0;
 }

 err = ipc_has_perm(msq, perms);
 return err;
}
