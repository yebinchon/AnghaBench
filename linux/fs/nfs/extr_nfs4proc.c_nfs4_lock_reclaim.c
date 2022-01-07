
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs4_state {int flags; int inode; } ;
struct nfs4_exception {scalar_t__ retry; int inode; } ;
struct file_lock {int dummy; } ;


 int F_SETLK ;
 int NFS4ERR_DELAY ;
 int NFS_DELEGATED_STATE ;
 int NFS_LOCK_RECLAIM ;
 struct nfs_server* NFS_SERVER (int ) ;
 int _nfs4_do_setlk (struct nfs4_state*,int ,struct file_lock*,int ) ;
 int nfs4_handle_exception (struct nfs_server*,int,struct nfs4_exception*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int nfs4_lock_reclaim(struct nfs4_state *state, struct file_lock *request)
{
 struct nfs_server *server = NFS_SERVER(state->inode);
 struct nfs4_exception exception = {
  .inode = state->inode,
 };
 int err;

 do {

  if (test_bit(NFS_DELEGATED_STATE, &state->flags) != 0)
   return 0;
  err = _nfs4_do_setlk(state, F_SETLK, request, NFS_LOCK_RECLAIM);
  if (err != -NFS4ERR_DELAY)
   break;
  nfs4_handle_exception(server, err, &exception);
 } while (exception.retry);
 return err;
}
