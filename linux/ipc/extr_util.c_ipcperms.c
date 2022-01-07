
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int mode; int gid; int cgid; int uid; int cuid; } ;
struct ipc_namespace {int user_ns; } ;
typedef int kuid_t ;


 int CAP_IPC_OWNER ;
 int audit_ipc_obj (struct kern_ipc_perm*) ;
 int current_euid () ;
 scalar_t__ in_group_p (int ) ;
 int ns_capable (int ,int ) ;
 int security_ipc_permission (struct kern_ipc_perm*,short) ;
 scalar_t__ uid_eq (int ,int ) ;

int ipcperms(struct ipc_namespace *ns, struct kern_ipc_perm *ipcp, short flag)
{
 kuid_t euid = current_euid();
 int requested_mode, granted_mode;

 audit_ipc_obj(ipcp);
 requested_mode = (flag >> 6) | (flag >> 3) | flag;
 granted_mode = ipcp->mode;
 if (uid_eq(euid, ipcp->cuid) ||
     uid_eq(euid, ipcp->uid))
  granted_mode >>= 6;
 else if (in_group_p(ipcp->cgid) || in_group_p(ipcp->gid))
  granted_mode >>= 3;

 if ((requested_mode & ~granted_mode & 0007) &&
     !ns_capable(ns->user_ns, CAP_IPC_OWNER))
  return -1;

 return security_ipc_permission(ipcp, flag);
}
