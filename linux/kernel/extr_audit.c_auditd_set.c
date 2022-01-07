
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pid {int dummy; } ;
struct net {int dummy; } ;
struct auditd_connection {int rcu; int net; int portid; int pid; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int auditd_conn ;
 int auditd_conn_free ;
 int auditd_conn_lock ;
 int call_rcu (int *,int ) ;
 int get_net (struct net*) ;
 int get_pid (struct pid*) ;
 struct auditd_connection* kzalloc (int,int ) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct auditd_connection*) ;
 struct auditd_connection* rcu_dereference_protected (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int auditd_set(struct pid *pid, u32 portid, struct net *net)
{
 unsigned long flags;
 struct auditd_connection *ac_old, *ac_new;

 if (!pid || !net)
  return -EINVAL;

 ac_new = kzalloc(sizeof(*ac_new), GFP_KERNEL);
 if (!ac_new)
  return -ENOMEM;
 ac_new->pid = get_pid(pid);
 ac_new->portid = portid;
 ac_new->net = get_net(net);

 spin_lock_irqsave(&auditd_conn_lock, flags);
 ac_old = rcu_dereference_protected(auditd_conn,
        lockdep_is_held(&auditd_conn_lock));
 rcu_assign_pointer(auditd_conn, ac_new);
 spin_unlock_irqrestore(&auditd_conn_lock, flags);

 if (ac_old)
  call_rcu(&ac_old->rcu, auditd_conn_free);

 return 0;
}
