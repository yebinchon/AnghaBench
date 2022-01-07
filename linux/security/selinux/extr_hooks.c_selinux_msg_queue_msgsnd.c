
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct msg_security_struct {scalar_t__ sid; } ;
struct msg_msg {int dummy; } ;
struct kern_ipc_perm {int key; } ;
struct ipc_security_struct {scalar_t__ sid; } ;
struct TYPE_2__ {int ipc_id; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int LSM_AUDIT_DATA_IPC ;
 int MSGQ__ENQUEUE ;
 int MSGQ__WRITE ;
 int MSG__SEND ;
 int SECCLASS_MSG ;
 int SECCLASS_MSGQ ;
 scalar_t__ SECINITSID_UNLABELED ;
 int avc_has_perm (int *,scalar_t__,scalar_t__,int ,int ,struct common_audit_data*) ;
 scalar_t__ current_sid () ;
 int security_transition_sid (int *,scalar_t__,scalar_t__,int ,int *,scalar_t__*) ;
 struct ipc_security_struct* selinux_ipc (struct kern_ipc_perm*) ;
 struct msg_security_struct* selinux_msg_msg (struct msg_msg*) ;
 int selinux_state ;

__attribute__((used)) static int selinux_msg_queue_msgsnd(struct kern_ipc_perm *msq, struct msg_msg *msg, int msqflg)
{
 struct ipc_security_struct *isec;
 struct msg_security_struct *msec;
 struct common_audit_data ad;
 u32 sid = current_sid();
 int rc;

 isec = selinux_ipc(msq);
 msec = selinux_msg_msg(msg);




 if (msec->sid == SECINITSID_UNLABELED) {




  rc = security_transition_sid(&selinux_state, sid, isec->sid,
          SECCLASS_MSG, ((void*)0), &msec->sid);
  if (rc)
   return rc;
 }

 ad.type = LSM_AUDIT_DATA_IPC;
 ad.u.ipc_id = msq->key;


 rc = avc_has_perm(&selinux_state,
     sid, isec->sid, SECCLASS_MSGQ,
     MSGQ__WRITE, &ad);
 if (!rc)

  rc = avc_has_perm(&selinux_state,
      sid, msec->sid, SECCLASS_MSG,
      MSG__SEND, &ad);
 if (!rc)

  rc = avc_has_perm(&selinux_state,
      msec->sid, isec->sid, SECCLASS_MSGQ,
      MSGQ__ENQUEUE, &ad);

 return rc;
}
