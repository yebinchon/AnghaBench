
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct nfs_lock_context {int dummy; } ;
struct nfs4_state {int inode; } ;
struct cred {int dummy; } ;
struct TYPE_6__ {scalar_t__ seqid; } ;
typedef TYPE_1__ nfs4_stateid ;
typedef int fmode_t ;


 int EAGAIN ;
 int EIO ;
 int ENOENT ;
 int NFS_CAP_STATEID_NFSV41 ;
 scalar_t__ nfs4_copy_delegation_stateid (int ,int ,TYPE_1__*,struct cred const**) ;
 int nfs4_copy_lock_stateid (TYPE_1__*,struct nfs4_state*,struct nfs_lock_context const*) ;
 scalar_t__ nfs4_copy_open_stateid (TYPE_1__*,struct nfs4_state*) ;
 int nfs4_valid_open_stateid (struct nfs4_state*) ;
 scalar_t__ nfs_server_capable (int ,int ) ;

int nfs4_select_rw_stateid(struct nfs4_state *state,
  fmode_t fmode, const struct nfs_lock_context *l_ctx,
  nfs4_stateid *dst, const struct cred **cred)
{
 int ret;

 if (!nfs4_valid_open_stateid(state))
  return -EIO;
 if (cred != ((void*)0))
  *cred = ((void*)0);
 ret = nfs4_copy_lock_stateid(dst, state, l_ctx);
 if (ret == -EIO)

  goto out;

 if (nfs4_copy_delegation_stateid(state->inode, fmode, dst, cred)) {
  ret = 0;
  goto out;
 }
 if (ret != -ENOENT)




  goto out;
 ret = nfs4_copy_open_stateid(dst, state) ? 0 : -EAGAIN;
out:
 if (nfs_server_capable(state->inode, NFS_CAP_STATEID_NFSV41))
  dst->seqid = 0;
 return ret;
}
