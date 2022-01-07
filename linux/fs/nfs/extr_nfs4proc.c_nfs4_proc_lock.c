
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {struct nfs4_state* state; } ;
struct nfs4_state {int flags; } ;
struct file_lock {int fl_type; int fl_flags; } ;
struct file {int f_mode; } ;


 int EBADF ;
 int EINVAL ;
 int ENOLCK ;
 int FL_POSIX ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int F_GETLK ;

 int F_UNLCK ;

 scalar_t__ IS_GETLK (int) ;
 scalar_t__ IS_SETLK (int) ;
 scalar_t__ IS_SETLKW (int) ;
 int NFS_STATE_POSIX_LOCKS ;
 int nfs4_proc_getlk (struct nfs4_state*,int ,struct file_lock*) ;
 int nfs4_proc_unlck (struct nfs4_state*,int,struct file_lock*) ;
 int nfs4_retry_setlk (struct nfs4_state*,int,struct file_lock*) ;
 int nfs4_set_lock_state (struct nfs4_state*,struct file_lock*) ;
 struct nfs_open_context* nfs_file_open_context (struct file*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
nfs4_proc_lock(struct file *filp, int cmd, struct file_lock *request)
{
 struct nfs_open_context *ctx;
 struct nfs4_state *state;
 int status;


 ctx = nfs_file_open_context(filp);
 state = ctx->state;

 if (IS_GETLK(cmd)) {
  if (state != ((void*)0))
   return nfs4_proc_getlk(state, F_GETLK, request);
  return 0;
 }

 if (!(IS_SETLK(cmd) || IS_SETLKW(cmd)))
  return -EINVAL;

 if (request->fl_type == F_UNLCK) {
  if (state != ((void*)0))
   return nfs4_proc_unlck(state, cmd, request);
  return 0;
 }

 if (state == ((void*)0))
  return -ENOLCK;

 if ((request->fl_flags & FL_POSIX) &&
     !test_bit(NFS_STATE_POSIX_LOCKS, &state->flags))
  return -ENOLCK;





 switch (request->fl_type) {
 case 129:
  if (!(filp->f_mode & FMODE_READ))
   return -EBADF;
  break;
 case 128:
  if (!(filp->f_mode & FMODE_WRITE))
   return -EBADF;
 }

 status = nfs4_set_lock_state(state, request);
 if (status != 0)
  return status;

 return nfs4_retry_setlk(state, cmd, request);
}
