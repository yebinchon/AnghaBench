
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kern_ipc_perm {int mode; int gid; int uid; } ;
struct TYPE_2__ {int osid; scalar_t__ has_perm; int mode; int gid; int uid; } ;
struct audit_context {int type; TYPE_1__ ipc; } ;


 int AUDIT_IPC ;
 struct audit_context* audit_context () ;
 int security_ipc_getsecid (struct kern_ipc_perm*,int *) ;

void __audit_ipc_obj(struct kern_ipc_perm *ipcp)
{
 struct audit_context *context = audit_context();
 context->ipc.uid = ipcp->uid;
 context->ipc.gid = ipcp->gid;
 context->ipc.mode = ipcp->mode;
 context->ipc.has_perm = 0;
 security_ipc_getsecid(ipcp, &context->ipc.osid);
 context->type = AUDIT_IPC;
}
