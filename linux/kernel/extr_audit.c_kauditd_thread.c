
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct net {int dummy; } ;
struct auditd_connection {int portid; int net; } ;


 int UNICAST_RETRIES ;
 int audit_backlog_wait ;
 struct sock* audit_get_sk (struct net*) ;
 int audit_hold_queue ;
 int audit_queue ;
 int audit_retry_queue ;
 int auditd_conn ;
 int auditd_reset (struct auditd_connection*) ;
 struct net* get_net (int ) ;
 int kauditd_hold_skb ;
 int kauditd_rehold_skb ;
 int kauditd_retry_skb ;
 int * kauditd_send_multicast_skb ;
 int kauditd_send_queue (struct sock*,int ,int *,int,int *,int ) ;
 int kauditd_wait ;
 int kthread_should_stop () ;
 int put_net (struct net*) ;
 struct auditd_connection* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int set_freezable () ;
 scalar_t__ skb_queue_len (int *) ;
 int wait_event_freezable (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int kauditd_thread(void *dummy)
{
 int rc;
 u32 portid = 0;
 struct net *net = ((void*)0);
 struct sock *sk = ((void*)0);
 struct auditd_connection *ac;



 set_freezable();
 while (!kthread_should_stop()) {

  rcu_read_lock();
  ac = rcu_dereference(auditd_conn);
  if (!ac) {
   rcu_read_unlock();
   goto main_queue;
  }
  net = get_net(ac->net);
  sk = audit_get_sk(net);
  portid = ac->portid;
  rcu_read_unlock();


  rc = kauditd_send_queue(sk, portid,
     &audit_hold_queue, 5,
     ((void*)0), kauditd_rehold_skb);
  if (ac && rc < 0) {
   sk = ((void*)0);
   auditd_reset(ac);
   goto main_queue;
  }


  rc = kauditd_send_queue(sk, portid,
     &audit_retry_queue, 5,
     ((void*)0), kauditd_hold_skb);
  if (ac && rc < 0) {
   sk = ((void*)0);
   auditd_reset(ac);
   goto main_queue;
  }

main_queue:




  rc = kauditd_send_queue(sk, portid, &audit_queue, 1,
     kauditd_send_multicast_skb,
     (sk ?
      kauditd_retry_skb : kauditd_hold_skb));
  if (ac && rc < 0)
   auditd_reset(ac);
  sk = ((void*)0);


  if (net) {
   put_net(net);
   net = ((void*)0);
  }


  wake_up(&audit_backlog_wait);





  wait_event_freezable(kauditd_wait,
         (skb_queue_len(&audit_queue) ? 1 : 0));
 }

 return 0;
}
