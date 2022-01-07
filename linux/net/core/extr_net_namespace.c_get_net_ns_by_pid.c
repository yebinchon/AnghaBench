
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct nsproxy* nsproxy; } ;
struct nsproxy {int net_ns; } ;
struct net {int dummy; } ;
typedef int pid_t ;


 struct net* ERR_PTR (int ) ;
 int ESRCH ;
 struct task_struct* find_task_by_vpid (int ) ;
 struct net* get_net (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int task_lock (struct task_struct*) ;
 int task_unlock (struct task_struct*) ;

struct net *get_net_ns_by_pid(pid_t pid)
{
 struct task_struct *tsk;
 struct net *net;


 net = ERR_PTR(-ESRCH);
 rcu_read_lock();
 tsk = find_task_by_vpid(pid);
 if (tsk) {
  struct nsproxy *nsproxy;
  task_lock(tsk);
  nsproxy = tsk->nsproxy;
  if (nsproxy)
   net = get_net(nsproxy->net_ns);
  task_unlock(tsk);
 }
 rcu_read_unlock();
 return net;
}
