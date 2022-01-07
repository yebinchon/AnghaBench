
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int state; } ;
struct nfs_lock_context {int dummy; } ;
typedef int nfs4_stateid ;
typedef int fmode_t ;


 int nfs4_select_rw_stateid (int ,int ,struct nfs_lock_context const*,int *,int *) ;

int nfs4_set_rw_stateid(nfs4_stateid *stateid,
  const struct nfs_open_context *ctx,
  const struct nfs_lock_context *l_ctx,
  fmode_t fmode)
{
 return nfs4_select_rw_stateid(ctx->state, fmode, l_ctx, stateid, ((void*)0));
}
