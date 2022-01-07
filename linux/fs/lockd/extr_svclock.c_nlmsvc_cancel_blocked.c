
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ fl_end; scalar_t__ fl_start; int fl_pid; } ;
struct nlm_lock {TYPE_2__ fl; } ;
struct nlm_file {int f_mutex; int f_file; } ;
struct nlm_block {TYPE_6__* b_call; TYPE_3__* b_file; } ;
struct net {int dummy; } ;
typedef int __be32 ;
struct TYPE_14__ {int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_11__ {int fl; } ;
struct TYPE_12__ {TYPE_4__ lock; } ;
struct TYPE_13__ {TYPE_5__ a_args; } ;
struct TYPE_10__ {int f_file; } ;
struct TYPE_8__ {int s_id; } ;


 int dprintk (char*,int ,int ,int ,long long,long long) ;
 scalar_t__ locks_in_grace (struct net*) ;
 TYPE_7__* locks_inode (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nlm_granted ;
 int nlm_lck_denied ;
 int nlm_lck_denied_grace_period ;
 struct nlm_block* nlmsvc_lookup_block (struct nlm_file*,struct nlm_lock*) ;
 int nlmsvc_release_block (struct nlm_block*) ;
 int nlmsvc_unlink_block (struct nlm_block*) ;
 int vfs_cancel_lock (int ,int *) ;

__be32
nlmsvc_cancel_blocked(struct net *net, struct nlm_file *file, struct nlm_lock *lock)
{
 struct nlm_block *block;
 int status = 0;

 dprintk("lockd: nlmsvc_cancel(%s/%ld, pi=%d, %Ld-%Ld)\n",
    locks_inode(file->f_file)->i_sb->s_id,
    locks_inode(file->f_file)->i_ino,
    lock->fl.fl_pid,
    (long long)lock->fl.fl_start,
    (long long)lock->fl.fl_end);

 if (locks_in_grace(net))
  return nlm_lck_denied_grace_period;

 mutex_lock(&file->f_mutex);
 block = nlmsvc_lookup_block(file, lock);
 mutex_unlock(&file->f_mutex);
 if (block != ((void*)0)) {
  vfs_cancel_lock(block->b_file->f_file,
    &block->b_call->a_args.lock.fl);
  status = nlmsvc_unlink_block(block);
  nlmsvc_release_block(block);
 }
 return status ? nlm_lck_denied : nlm_granted;
}
