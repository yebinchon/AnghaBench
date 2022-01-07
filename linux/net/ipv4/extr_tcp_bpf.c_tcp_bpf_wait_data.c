
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;
struct sk_psock {int ingress_msg; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int SOCKWQ_ASYNC_WAITDATA ;
 int add_wait_queue (int ,int *) ;
 int list_empty (int *) ;
 int remove_wait_queue (int ,int *) ;
 int sk_clear_bit (int ,struct sock*) ;
 int sk_set_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 int sk_wait_event (struct sock*,long*,int,int *) ;
 int skb_queue_empty (int *) ;
 int wait ;
 int woken_wake_function ;

__attribute__((used)) static int tcp_bpf_wait_data(struct sock *sk, struct sk_psock *psock,
        int flags, long timeo, int *err)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);
 int ret = 0;

 if (!timeo)
  return ret;

 add_wait_queue(sk_sleep(sk), &wait);
 sk_set_bit(SOCKWQ_ASYNC_WAITDATA, sk);
 ret = sk_wait_event(sk, &timeo,
       !list_empty(&psock->ingress_msg) ||
       !skb_queue_empty(&sk->sk_receive_queue), &wait);
 sk_clear_bit(SOCKWQ_ASYNC_WAITDATA, sk);
 remove_wait_queue(sk_sleep(sk), &wait);
 return ret;
}
