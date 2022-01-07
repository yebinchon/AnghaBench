
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_sec_ctx {int ctx_sid; } ;
struct task_security_struct {int sid; } ;


 int ASSOCIATION__SETCONTEXT ;
 int SECCLASS_ASSOCIATION ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_cred () ;
 struct task_security_struct* selinux_cred (int ) ;
 int selinux_state ;

__attribute__((used)) static int selinux_xfrm_delete(struct xfrm_sec_ctx *ctx)
{
 const struct task_security_struct *tsec = selinux_cred(current_cred());

 if (!ctx)
  return 0;

 return avc_has_perm(&selinux_state,
       tsec->sid, ctx->ctx_sid,
       SECCLASS_ASSOCIATION, ASSOCIATION__SETCONTEXT,
       ((void*)0));
}
