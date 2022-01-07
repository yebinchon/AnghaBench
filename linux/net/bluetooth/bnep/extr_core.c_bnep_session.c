
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; int sk_err; int sk_write_queue; int sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bnep_session {TYPE_1__* sock; int terminate; struct net_device* dev; } ;
struct TYPE_2__ {int file; struct sock* sk; } ;


 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*) ;
 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EUNATCH ;
 int MAX_SCHEDULE_TIMEOUT ;
 int TASK_INTERRUPTIBLE ;
 int __bnep_unlink_session (struct bnep_session*) ;
 int add_wait_queue (int ,int *) ;
 scalar_t__ atomic_read (int *) ;
 int bnep_rx_frame (struct bnep_session*,struct sk_buff*) ;
 int bnep_session_sem ;
 scalar_t__ bnep_tx_frame (struct bnep_session*,struct sk_buff*) ;
 int current ;
 int down_write (int *) ;
 int fput (int ) ;
 int free_netdev (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int module_put_and_exit (int ) ;
 int netif_wake_queue (struct net_device*) ;
 int remove_wait_queue (int ,int *) ;
 int set_user_nice (int ,int) ;
 int sk_sleep (struct sock*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_linearize (struct sk_buff*) ;
 int skb_orphan (struct sk_buff*) ;
 int unregister_netdev (struct net_device*) ;
 int up_write (int *) ;
 int wait ;
 int wait_woken (int *,int ,int ) ;
 int wake_up_interruptible (int ) ;
 int woken_wake_function ;

__attribute__((used)) static int bnep_session(void *arg)
{
 struct bnep_session *s = arg;
 struct net_device *dev = s->dev;
 struct sock *sk = s->sock->sk;
 struct sk_buff *skb;
 DEFINE_WAIT_FUNC(wait, woken_wake_function);

 BT_DBG("");

 set_user_nice(current, -15);

 add_wait_queue(sk_sleep(sk), &wait);
 while (1) {
  if (atomic_read(&s->terminate))
   break;

  while ((skb = skb_dequeue(&sk->sk_receive_queue))) {
   skb_orphan(skb);
   if (!skb_linearize(skb))
    bnep_rx_frame(s, skb);
   else
    kfree_skb(skb);
  }

  if (sk->sk_state != BT_CONNECTED)
   break;


  while ((skb = skb_dequeue(&sk->sk_write_queue)))
   if (bnep_tx_frame(s, skb))
    break;
  netif_wake_queue(dev);





  wait_woken(&wait, TASK_INTERRUPTIBLE, MAX_SCHEDULE_TIMEOUT);
 }
 remove_wait_queue(sk_sleep(sk), &wait);


 down_write(&bnep_session_sem);


 unregister_netdev(dev);


 s->sock->sk->sk_err = EUNATCH;

 wake_up_interruptible(sk_sleep(s->sock->sk));


 fput(s->sock->file);

 __bnep_unlink_session(s);

 up_write(&bnep_session_sem);
 free_netdev(dev);
 module_put_and_exit(0);
 return 0;
}
