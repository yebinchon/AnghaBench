
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct task_struct {scalar_t__ files; TYPE_1__* fs; int real_parent; } ;
struct seq_file {int dummy; } ;
struct pid_namespace {int level; } ;
struct pid {int level; TYPE_2__* numbers; } ;
struct group_info {int ngroups; int * gid; } ;
struct cred {struct group_info* group_info; int fsgid; int sgid; int egid; int gid; int fsuid; int suid; int euid; int uid; } ;
typedef unsigned int pid_t ;
struct TYPE_6__ {unsigned int max_fds; } ;
struct TYPE_5__ {struct pid_namespace* ns; } ;
struct TYPE_4__ {int umask; } ;


 TYPE_3__* files_fdtable (scalar_t__) ;
 unsigned int from_kgid_munged (struct user_namespace*,int ) ;
 unsigned int from_kuid_munged (struct user_namespace*,int ) ;
 struct cred* get_task_cred (struct task_struct*) ;
 char* get_task_state (struct task_struct*) ;
 scalar_t__ pid_alive (struct task_struct*) ;
 unsigned int pid_nr_ns (struct pid*,struct pid_namespace*) ;
 struct task_struct* ptrace_parent (struct task_struct*) ;
 int put_cred (struct cred const*) ;
 struct task_struct* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_put_decimal_ull (struct seq_file*,char*,unsigned int) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 struct user_namespace* seq_user_ns (struct seq_file*) ;
 int task_lock (struct task_struct*) ;
 unsigned int task_numa_group_id (struct task_struct*) ;
 unsigned int task_pgrp_nr_ns (struct task_struct*,struct pid_namespace*) ;
 unsigned int task_pid_nr_ns (struct task_struct*,struct pid_namespace*) ;
 unsigned int task_session_nr_ns (struct task_struct*,struct pid_namespace*) ;
 unsigned int task_tgid_nr_ns (struct task_struct*,struct pid_namespace*) ;
 int task_unlock (struct task_struct*) ;

__attribute__((used)) static inline void task_state(struct seq_file *m, struct pid_namespace *ns,
    struct pid *pid, struct task_struct *p)
{
 struct user_namespace *user_ns = seq_user_ns(m);
 struct group_info *group_info;
 int g, umask = -1;
 struct task_struct *tracer;
 const struct cred *cred;
 pid_t ppid, tpid = 0, tgid, ngid;
 unsigned int max_fds = 0;

 rcu_read_lock();
 ppid = pid_alive(p) ?
  task_tgid_nr_ns(rcu_dereference(p->real_parent), ns) : 0;

 tracer = ptrace_parent(p);
 if (tracer)
  tpid = task_pid_nr_ns(tracer, ns);

 tgid = task_tgid_nr_ns(p, ns);
 ngid = task_numa_group_id(p);
 cred = get_task_cred(p);

 task_lock(p);
 if (p->fs)
  umask = p->fs->umask;
 if (p->files)
  max_fds = files_fdtable(p->files)->max_fds;
 task_unlock(p);
 rcu_read_unlock();

 if (umask >= 0)
  seq_printf(m, "Umask:\t%#04o\n", umask);
 seq_puts(m, "State:\t");
 seq_puts(m, get_task_state(p));

 seq_put_decimal_ull(m, "\nTgid:\t", tgid);
 seq_put_decimal_ull(m, "\nNgid:\t", ngid);
 seq_put_decimal_ull(m, "\nPid:\t", pid_nr_ns(pid, ns));
 seq_put_decimal_ull(m, "\nPPid:\t", ppid);
 seq_put_decimal_ull(m, "\nTracerPid:\t", tpid);
 seq_put_decimal_ull(m, "\nUid:\t", from_kuid_munged(user_ns, cred->uid));
 seq_put_decimal_ull(m, "\t", from_kuid_munged(user_ns, cred->euid));
 seq_put_decimal_ull(m, "\t", from_kuid_munged(user_ns, cred->suid));
 seq_put_decimal_ull(m, "\t", from_kuid_munged(user_ns, cred->fsuid));
 seq_put_decimal_ull(m, "\nGid:\t", from_kgid_munged(user_ns, cred->gid));
 seq_put_decimal_ull(m, "\t", from_kgid_munged(user_ns, cred->egid));
 seq_put_decimal_ull(m, "\t", from_kgid_munged(user_ns, cred->sgid));
 seq_put_decimal_ull(m, "\t", from_kgid_munged(user_ns, cred->fsgid));
 seq_put_decimal_ull(m, "\nFDSize:\t", max_fds);

 seq_puts(m, "\nGroups:\t");
 group_info = cred->group_info;
 for (g = 0; g < group_info->ngroups; g++)
  seq_put_decimal_ull(m, g ? " " : "",
    from_kgid_munged(user_ns, group_info->gid[g]));
 put_cred(cred);

 seq_putc(m, ' ');
 seq_putc(m, '\n');
}
