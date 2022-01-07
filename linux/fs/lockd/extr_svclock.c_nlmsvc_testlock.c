
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct nlm_lockowner {int pid; } ;
struct TYPE_8__ {scalar_t__ fl_type; int * fl_owner; scalar_t__ fl_end; scalar_t__ fl_start; } ;
struct TYPE_7__ {scalar_t__ len; } ;
struct nlm_lock {char* caller; TYPE_3__ fl; int svid; TYPE_2__ oh; int len; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {int f_file; } ;
struct nlm_cookie {int dummy; } ;
typedef int __be32 ;
struct TYPE_9__ {int i_ino; TYPE_1__* i_sb; } ;
struct TYPE_6__ {int s_id; } ;


 int FILE_LOCK_DEFERRED ;
 scalar_t__ F_UNLCK ;
 int SVC_NET (struct svc_rqst*) ;
 int WARN_ON_ONCE (int) ;
 int dprintk (char*,scalar_t__,long long,long long,...) ;
 scalar_t__ locks_in_grace (int ) ;
 TYPE_5__* locks_inode (int ) ;
 int locks_release_private (TYPE_3__*) ;
 int nlm_granted ;
 int nlm_lck_denied ;
 int nlm_lck_denied_grace_period ;
 int nlm_lck_denied_nolocks ;
 int nlmsvc_put_lockowner (struct nlm_lockowner*) ;
 int strlen (char*) ;
 int vfs_test_lock (int ,TYPE_3__*) ;

__be32
nlmsvc_testlock(struct svc_rqst *rqstp, struct nlm_file *file,
  struct nlm_host *host, struct nlm_lock *lock,
  struct nlm_lock *conflock, struct nlm_cookie *cookie)
{
 int error;
 __be32 ret;
 struct nlm_lockowner *test_owner;

 dprintk("lockd: nlmsvc_testlock(%s/%ld, ty=%d, %Ld-%Ld)\n",
    locks_inode(file->f_file)->i_sb->s_id,
    locks_inode(file->f_file)->i_ino,
    lock->fl.fl_type,
    (long long)lock->fl.fl_start,
    (long long)lock->fl.fl_end);

 if (locks_in_grace(SVC_NET(rqstp))) {
  ret = nlm_lck_denied_grace_period;
  goto out;
 }


 test_owner = (struct nlm_lockowner *)lock->fl.fl_owner;

 error = vfs_test_lock(file->f_file, &lock->fl);
 if (error) {

  if (error == FILE_LOCK_DEFERRED)
   WARN_ON_ONCE(1);

  ret = nlm_lck_denied_nolocks;
  goto out;
 }

 if (lock->fl.fl_type == F_UNLCK) {
  ret = nlm_granted;
  goto out;
 }

 dprintk("lockd: conflicting lock(ty=%d, %Ld-%Ld)\n",
  lock->fl.fl_type, (long long)lock->fl.fl_start,
  (long long)lock->fl.fl_end);
 conflock->caller = "somehost";
 conflock->len = strlen(conflock->caller);
 conflock->oh.len = 0;
 conflock->svid = ((struct nlm_lockowner *)lock->fl.fl_owner)->pid;
 conflock->fl.fl_type = lock->fl.fl_type;
 conflock->fl.fl_start = lock->fl.fl_start;
 conflock->fl.fl_end = lock->fl.fl_end;
 locks_release_private(&lock->fl);


 lock->fl.fl_owner = ((void*)0);
 nlmsvc_put_lockowner(test_owner);

 ret = nlm_lck_denied;
out:
 return ret;
}
