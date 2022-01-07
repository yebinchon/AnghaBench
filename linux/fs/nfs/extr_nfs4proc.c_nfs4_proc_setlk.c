
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int inode; } ;
struct nfs4_exception {int interruptible; scalar_t__ retry; int inode; struct nfs4_state* state; } ;
struct file_lock {int dummy; } ;


 int EAGAIN ;
 int NFS4ERR_DENIED ;
 int NFS_SERVER (int ) ;
 int _nfs4_proc_setlk (struct nfs4_state*,int,struct file_lock*) ;
 int nfs4_handle_exception (int ,int,struct nfs4_exception*) ;

__attribute__((used)) static int nfs4_proc_setlk(struct nfs4_state *state, int cmd, struct file_lock *request)
{
 struct nfs4_exception exception = {
  .state = state,
  .inode = state->inode,
  .interruptible = 1,
 };
 int err;

 do {
  err = _nfs4_proc_setlk(state, cmd, request);
  if (err == -NFS4ERR_DENIED)
   err = -EAGAIN;
  err = nfs4_handle_exception(NFS_SERVER(state->inode),
    err, &exception);
 } while (exception.retry);
 return err;
}
