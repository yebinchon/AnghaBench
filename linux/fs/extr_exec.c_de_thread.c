
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ exit_state; int exit_signal; struct sighand_struct* sighand; int parent; int ptrace; struct task_struct* group_leader; int sibling; int tasks; int pid; int real_start_time; int start_time; struct signal_struct* signal; } ;
struct signal_struct {int notify_count; struct task_struct* group_exit_task; } ;
struct sighand_struct {int siglock; int action; int count; } ;
typedef int spinlock_t ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOMEM ;
 scalar_t__ EXIT_DEAD ;
 scalar_t__ EXIT_ZOMBIE ;
 int GFP_KERNEL ;
 int PIDTYPE_PGID ;
 int PIDTYPE_PID ;
 int PIDTYPE_SID ;
 int PIDTYPE_TGID ;
 void* SIGCHLD ;
 int TASK_KILLABLE ;
 int __cleanup_sighand (struct sighand_struct*) ;
 scalar_t__ __fatal_signal_pending (struct task_struct*) ;
 int __set_current_state (int ) ;
 int __wake_up_parent (struct task_struct*,int ) ;
 int cgroup_threadgroup_change_begin (struct task_struct*) ;
 int cgroup_threadgroup_change_end (struct task_struct*) ;
 int change_pid (struct task_struct*,int ,int ) ;
 int exit_itimers (struct signal_struct*) ;
 int flush_itimer_signals () ;
 int has_group_leader_pid (struct task_struct*) ;
 struct sighand_struct* kmem_cache_alloc (int ,int ) ;
 scalar_t__ likely (scalar_t__) ;
 int list_replace_init (int *,int *) ;
 int list_replace_rcu (int *,int *) ;
 int memcpy (int ,int ,int) ;
 int rcu_assign_pointer (struct sighand_struct*,struct sighand_struct*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int refcount_read (int *) ;
 int refcount_set (int *,int) ;
 int release_task (struct task_struct*) ;
 int same_thread_group (struct task_struct*,struct task_struct*) ;
 int schedule () ;
 int sighand_cachep ;
 scalar_t__ signal_group_exit (struct signal_struct*) ;
 int spin_lock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_irq (int *) ;
 int task_pid (struct task_struct*) ;
 int tasklist_lock ;
 scalar_t__ thread_group_empty (struct task_struct*) ;
 int thread_group_leader (struct task_struct*) ;
 int transfer_pid (struct task_struct*,struct task_struct*,int ) ;
 scalar_t__ unlikely (int ) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;
 int zap_other_threads (struct task_struct*) ;

__attribute__((used)) static int de_thread(struct task_struct *tsk)
{
 struct signal_struct *sig = tsk->signal;
 struct sighand_struct *oldsighand = tsk->sighand;
 spinlock_t *lock = &oldsighand->siglock;

 if (thread_group_empty(tsk))
  goto no_thread_group;




 spin_lock_irq(lock);
 if (signal_group_exit(sig)) {




  spin_unlock_irq(lock);
  return -EAGAIN;
 }

 sig->group_exit_task = tsk;
 sig->notify_count = zap_other_threads(tsk);
 if (!thread_group_leader(tsk))
  sig->notify_count--;

 while (sig->notify_count) {
  __set_current_state(TASK_KILLABLE);
  spin_unlock_irq(lock);
  schedule();
  if (__fatal_signal_pending(tsk))
   goto killed;
  spin_lock_irq(lock);
 }
 spin_unlock_irq(lock);






 if (!thread_group_leader(tsk)) {
  struct task_struct *leader = tsk->group_leader;

  for (;;) {
   cgroup_threadgroup_change_begin(tsk);
   write_lock_irq(&tasklist_lock);




   sig->notify_count = -1;
   if (likely(leader->exit_state))
    break;
   __set_current_state(TASK_KILLABLE);
   write_unlock_irq(&tasklist_lock);
   cgroup_threadgroup_change_end(tsk);
   schedule();
   if (__fatal_signal_pending(tsk))
    goto killed;
  }
  tsk->start_time = leader->start_time;
  tsk->real_start_time = leader->real_start_time;

  BUG_ON(!same_thread_group(leader, tsk));
  BUG_ON(has_group_leader_pid(tsk));
  tsk->pid = leader->pid;
  change_pid(tsk, PIDTYPE_PID, task_pid(leader));
  transfer_pid(leader, tsk, PIDTYPE_TGID);
  transfer_pid(leader, tsk, PIDTYPE_PGID);
  transfer_pid(leader, tsk, PIDTYPE_SID);

  list_replace_rcu(&leader->tasks, &tsk->tasks);
  list_replace_init(&leader->sibling, &tsk->sibling);

  tsk->group_leader = tsk;
  leader->group_leader = tsk;

  tsk->exit_signal = SIGCHLD;
  leader->exit_signal = -1;

  BUG_ON(leader->exit_state != EXIT_ZOMBIE);
  leader->exit_state = EXIT_DEAD;






  if (unlikely(leader->ptrace))
   __wake_up_parent(leader, leader->parent);
  write_unlock_irq(&tasklist_lock);
  cgroup_threadgroup_change_end(tsk);

  release_task(leader);
 }

 sig->group_exit_task = ((void*)0);
 sig->notify_count = 0;

no_thread_group:

 tsk->exit_signal = SIGCHLD;






 if (refcount_read(&oldsighand->count) != 1) {
  struct sighand_struct *newsighand;




  newsighand = kmem_cache_alloc(sighand_cachep, GFP_KERNEL);
  if (!newsighand)
   return -ENOMEM;

  refcount_set(&newsighand->count, 1);
  memcpy(newsighand->action, oldsighand->action,
         sizeof(newsighand->action));

  write_lock_irq(&tasklist_lock);
  spin_lock(&oldsighand->siglock);
  rcu_assign_pointer(tsk->sighand, newsighand);
  spin_unlock(&oldsighand->siglock);
  write_unlock_irq(&tasklist_lock);

  __cleanup_sighand(oldsighand);
 }

 BUG_ON(!thread_group_leader(tsk));
 return 0;

killed:

 read_lock(&tasklist_lock);
 sig->group_exit_task = ((void*)0);
 sig->notify_count = 0;
 read_unlock(&tasklist_lock);
 return -EAGAIN;
}
