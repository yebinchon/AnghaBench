
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int rwsem; } ;
struct nfs4_state_owner {int so_delegreturn_mutex; } ;
struct nfs4_state {int inode; int flags; struct nfs4_state_owner* owner; } ;
struct file_lock {unsigned char fl_flags; } ;


 unsigned char FL_ACCESS ;
 unsigned char FL_SLEEP ;
 int NFS_DELEGATED_STATE ;
 struct nfs_inode* NFS_I (int ) ;
 int NFS_LOCK_NEW ;
 int _nfs4_do_setlk (struct nfs4_state*,int,struct file_lock*,int ) ;
 int down_read (int *) ;
 int locks_lock_inode_wait (int ,struct file_lock*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_read (int *) ;

__attribute__((used)) static int _nfs4_proc_setlk(struct nfs4_state *state, int cmd, struct file_lock *request)
{
 struct nfs_inode *nfsi = NFS_I(state->inode);
 struct nfs4_state_owner *sp = state->owner;
 unsigned char fl_flags = request->fl_flags;
 int status;

 request->fl_flags |= FL_ACCESS;
 status = locks_lock_inode_wait(state->inode, request);
 if (status < 0)
  goto out;
 mutex_lock(&sp->so_delegreturn_mutex);
 down_read(&nfsi->rwsem);
 if (test_bit(NFS_DELEGATED_STATE, &state->flags)) {


  request->fl_flags = fl_flags & ~FL_SLEEP;
  status = locks_lock_inode_wait(state->inode, request);
  up_read(&nfsi->rwsem);
  mutex_unlock(&sp->so_delegreturn_mutex);
  goto out;
 }
 up_read(&nfsi->rwsem);
 mutex_unlock(&sp->so_delegreturn_mutex);
 status = _nfs4_do_setlk(state, cmd, request, NFS_LOCK_NEW);
out:
 request->fl_flags = fl_flags;
 return status;
}
