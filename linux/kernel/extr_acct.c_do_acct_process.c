
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct pid_namespace {int dummy; } ;
struct file {TYPE_6__* f_cred; } ;
struct cred {int gid; int uid; } ;
struct bsd_acct_struct {struct pid_namespace* ns; struct file* file; } ;
typedef int loff_t ;
struct TYPE_12__ {void* ac_ppid; void* ac_pid; int ac_gid; int ac_gid16; int ac_uid; int ac_uid16; } ;
typedef TYPE_3__ acct_t ;
struct TYPE_14__ {int user_ns; } ;
struct TYPE_13__ {TYPE_2__* signal; int real_parent; } ;
struct TYPE_11__ {TYPE_1__* rlim; } ;
struct TYPE_10__ {unsigned long rlim_cur; } ;


 size_t RLIMIT_FSIZE ;
 unsigned long RLIM_INFINITY ;
 int __kernel_write (struct file*,TYPE_3__*,int,int *) ;
 int check_free_space (struct bsd_acct_struct*) ;
 TYPE_4__* current ;
 int file_end_write (struct file*) ;
 scalar_t__ file_start_write_trylock (struct file*) ;
 int fill_ac (TYPE_3__*) ;
 int from_kgid_munged (int ,int ) ;
 int from_kuid_munged (int ,int ) ;
 struct cred* override_creds (TYPE_6__*) ;
 TYPE_4__* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int revert_creds (struct cred const*) ;
 void* task_tgid_nr_ns (TYPE_4__*,struct pid_namespace*) ;

__attribute__((used)) static void do_acct_process(struct bsd_acct_struct *acct)
{
 acct_t ac;
 unsigned long flim;
 const struct cred *orig_cred;
 struct file *file = acct->file;




 flim = current->signal->rlim[RLIMIT_FSIZE].rlim_cur;
 current->signal->rlim[RLIMIT_FSIZE].rlim_cur = RLIM_INFINITY;

 orig_cred = override_creds(file->f_cred);





 if (!check_free_space(acct))
  goto out;

 fill_ac(&ac);

 ac.ac_uid = from_kuid_munged(file->f_cred->user_ns, orig_cred->uid);
 ac.ac_gid = from_kgid_munged(file->f_cred->user_ns, orig_cred->gid);
 if (file_start_write_trylock(file)) {

  loff_t pos = 0;
  __kernel_write(file, &ac, sizeof(acct_t), &pos);
  file_end_write(file);
 }
out:
 current->signal->rlim[RLIMIT_FSIZE].rlim_cur = flim;
 revert_creds(orig_cred);
}
