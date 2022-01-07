
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kern_ipc_perm {int key; } ;
struct ipc_security_struct {int sclass; int sid; } ;
struct TYPE_2__ {int ipc_id; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;


 int LSM_AUDIT_DATA_IPC ;
 int avc_has_perm (int *,int ,int ,int ,int ,struct common_audit_data*) ;
 int current_sid () ;
 struct ipc_security_struct* selinux_ipc (struct kern_ipc_perm*) ;
 int selinux_state ;

__attribute__((used)) static int ipc_has_perm(struct kern_ipc_perm *ipc_perms,
   u32 perms)
{
 struct ipc_security_struct *isec;
 struct common_audit_data ad;
 u32 sid = current_sid();

 isec = selinux_ipc(ipc_perms);

 ad.type = LSM_AUDIT_DATA_IPC;
 ad.u.ipc_id = ipc_perms->key;

 return avc_has_perm(&selinux_state,
       sid, isec->sid, isec->sclass, perms, &ad);
}
