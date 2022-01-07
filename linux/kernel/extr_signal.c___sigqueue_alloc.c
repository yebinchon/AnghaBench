
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_struct {int sigpending; } ;
struct task_struct {int dummy; } ;
struct sigqueue {struct user_struct* user; scalar_t__ flags; int list; } ;
typedef int gfp_t ;
struct TYPE_2__ {int user; } ;


 int INIT_LIST_HEAD (int *) ;
 int RLIMIT_SIGPENDING ;
 TYPE_1__* __task_cred (struct task_struct*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int free_uid (struct user_struct*) ;
 struct user_struct* get_uid (int ) ;
 struct sigqueue* kmem_cache_alloc (int ,int ) ;
 int print_dropped_signal (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sigqueue_cachep ;
 scalar_t__ task_rlimit (struct task_struct*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct sigqueue *
__sigqueue_alloc(int sig, struct task_struct *t, gfp_t flags, int override_rlimit)
{
 struct sigqueue *q = ((void*)0);
 struct user_struct *user;





 rcu_read_lock();
 user = get_uid(__task_cred(t)->user);
 atomic_inc(&user->sigpending);
 rcu_read_unlock();

 if (override_rlimit ||
     atomic_read(&user->sigpending) <=
   task_rlimit(t, RLIMIT_SIGPENDING)) {
  q = kmem_cache_alloc(sigqueue_cachep, flags);
 } else {
  print_dropped_signal(sig);
 }

 if (unlikely(q == ((void*)0))) {
  atomic_dec(&user->sigpending);
  free_uid(user);
 } else {
  INIT_LIST_HEAD(&q->list);
  q->flags = 0;
  q->user = user;
 }

 return q;
}
