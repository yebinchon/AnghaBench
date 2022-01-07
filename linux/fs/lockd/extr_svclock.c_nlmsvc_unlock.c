
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fl_type; scalar_t__ fl_end; scalar_t__ fl_start; int fl_pid; } ;
struct nlm_lock {TYPE_2__ fl; } ;
struct nlm_file {int f_file; } ;
struct net {int dummy; } ;
typedef int __be32 ;
struct TYPE_6__ {int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int s_id; } ;


 int F_SETLK ;
 int F_UNLCK ;
 int dprintk (char*,int ,int ,int ,long long,long long) ;
 TYPE_3__* locks_inode (int ) ;
 int nlm_granted ;
 int nlm_lck_denied_nolocks ;
 int nlmsvc_cancel_blocked (struct net*,struct nlm_file*,struct nlm_lock*) ;
 int vfs_lock_file (int ,int ,TYPE_2__*,int *) ;

__be32
nlmsvc_unlock(struct net *net, struct nlm_file *file, struct nlm_lock *lock)
{
 int error;

 dprintk("lockd: nlmsvc_unlock(%s/%ld, pi=%d, %Ld-%Ld)\n",
    locks_inode(file->f_file)->i_sb->s_id,
    locks_inode(file->f_file)->i_ino,
    lock->fl.fl_pid,
    (long long)lock->fl.fl_start,
    (long long)lock->fl.fl_end);


 nlmsvc_cancel_blocked(net, file, lock);

 lock->fl.fl_type = F_UNLCK;
 error = vfs_lock_file(file->f_file, F_SETLK, &lock->fl, ((void*)0));

 return (error < 0)? nlm_lck_denied_nolocks : nlm_granted;
}
