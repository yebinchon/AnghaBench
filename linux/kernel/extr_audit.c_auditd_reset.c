
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef struct auditd_connection {int rcu; } const auditd_connection ;


 int audit_retry_queue ;
 int auditd_conn ;
 int auditd_conn_free ;
 int auditd_conn_lock ;
 int call_rcu (int *,int ) ;
 int kauditd_hold_skb (struct sk_buff*) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,int *) ;
 struct auditd_connection const* rcu_dereference_protected (int ,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void auditd_reset(const struct auditd_connection *ac)
{
 unsigned long flags;
 struct sk_buff *skb;
 struct auditd_connection *ac_old;


 spin_lock_irqsave(&auditd_conn_lock, flags);
 ac_old = rcu_dereference_protected(auditd_conn,
        lockdep_is_held(&auditd_conn_lock));
 if (ac && ac != ac_old) {

  spin_unlock_irqrestore(&auditd_conn_lock, flags);
  return;
 }
 rcu_assign_pointer(auditd_conn, ((void*)0));
 spin_unlock_irqrestore(&auditd_conn_lock, flags);

 if (ac_old)
  call_rcu(&ac_old->rcu, auditd_conn_free);



 while ((skb = skb_dequeue(&audit_retry_queue)))
  kauditd_hold_skb(skb);
}
