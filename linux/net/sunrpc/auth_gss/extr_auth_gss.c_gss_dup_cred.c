
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long cr_flags; int cr_cred; } ;
struct gss_cred {int gc_ctx; int gc_principal; int gc_service; TYPE_1__ gc_base; } ;
struct gss_cl_ctx {int dummy; } ;
struct gss_auth {int kref; int rpc_auth; } ;
struct auth_cred {int cred; } ;


 int GFP_NOFS ;
 unsigned long RPCAUTH_CRED_UPTODATE ;
 int gss_get_ctx (struct gss_cl_ctx*) ;
 int gss_nullops ;
 int kref_get (int *) ;
 struct gss_cred* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct gss_cl_ctx*) ;
 struct gss_cl_ctx* rcu_dereference_protected (int ,int) ;
 int rpcauth_init_cred (TYPE_1__*,struct auth_cred*,int *,int *) ;

__attribute__((used)) static struct gss_cred *
gss_dup_cred(struct gss_auth *gss_auth, struct gss_cred *gss_cred)
{
 struct gss_cred *new;


 new = kzalloc(sizeof(*gss_cred), GFP_NOFS);
 if (new) {
  struct auth_cred acred = {
   .cred = gss_cred->gc_base.cr_cred,
  };
  struct gss_cl_ctx *ctx =
   rcu_dereference_protected(gss_cred->gc_ctx, 1);

  rpcauth_init_cred(&new->gc_base, &acred,
    &gss_auth->rpc_auth,
    &gss_nullops);
  new->gc_base.cr_flags = 1UL << RPCAUTH_CRED_UPTODATE;
  new->gc_service = gss_cred->gc_service;
  new->gc_principal = gss_cred->gc_principal;
  kref_get(&gss_auth->kref);
  rcu_assign_pointer(new->gc_ctx, ctx);
  gss_get_ctx(ctx);
 }
 return new;
}
