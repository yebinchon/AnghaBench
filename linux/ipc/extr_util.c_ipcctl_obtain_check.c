
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int uid; int cuid; } ;
struct ipc_namespace {int user_ns; } ;
struct ipc_ids {int dummy; } ;
struct ipc64_perm {int mode; int gid; int uid; } ;
typedef int kuid_t ;


 int CAP_SYS_ADMIN ;
 int EPERM ;
 struct kern_ipc_perm* ERR_PTR (int) ;
 int IPC_SET ;
 scalar_t__ IS_ERR (struct kern_ipc_perm*) ;
 int PTR_ERR (struct kern_ipc_perm*) ;
 int audit_ipc_obj (struct kern_ipc_perm*) ;
 int audit_ipc_set_perm (int,int ,int ,int ) ;
 int current_euid () ;
 struct kern_ipc_perm* ipc_obtain_object_check (struct ipc_ids*,int) ;
 scalar_t__ ns_capable (int ,int ) ;
 scalar_t__ uid_eq (int ,int ) ;

struct kern_ipc_perm *ipcctl_obtain_check(struct ipc_namespace *ns,
     struct ipc_ids *ids, int id, int cmd,
     struct ipc64_perm *perm, int extra_perm)
{
 kuid_t euid;
 int err = -EPERM;
 struct kern_ipc_perm *ipcp;

 ipcp = ipc_obtain_object_check(ids, id);
 if (IS_ERR(ipcp)) {
  err = PTR_ERR(ipcp);
  goto err;
 }

 audit_ipc_obj(ipcp);
 if (cmd == IPC_SET)
  audit_ipc_set_perm(extra_perm, perm->uid,
       perm->gid, perm->mode);

 euid = current_euid();
 if (uid_eq(euid, ipcp->cuid) || uid_eq(euid, ipcp->uid) ||
     ns_capable(ns->user_ns, CAP_SYS_ADMIN))
  return ipcp;
err:
 return ERR_PTR(err);
}
