
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int dummy; } ;
struct nfs_lock_context {int dummy; } ;
typedef int nfs4_stateid ;
typedef int fmode_t ;


 int EIO ;
 int nfs4_set_rw_stateid (int *,struct nfs_open_context const*,struct nfs_lock_context const*,int ) ;
 int nfs4_stateid_match (int *,int *) ;

__attribute__((used)) static bool nfs4_stateid_is_current(nfs4_stateid *stateid,
  const struct nfs_open_context *ctx,
  const struct nfs_lock_context *l_ctx,
  fmode_t fmode)
{
 nfs4_stateid current_stateid;


 if (nfs4_set_rw_stateid(&current_stateid, ctx, l_ctx, fmode) == -EIO)
  return 1;
 return nfs4_stateid_match(stateid, &current_stateid);
}
