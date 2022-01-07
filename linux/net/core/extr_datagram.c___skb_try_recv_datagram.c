
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int lock; int prev; } ;
struct sock {struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int dummy; } ;


 int EAGAIN ;
 unsigned int MSG_DONTWAIT ;
 struct sk_buff* READ_ONCE (int ) ;
 struct sk_buff* __skb_try_recv_from_queue (struct sock*,struct sk_buff_head*,unsigned int,void (*) (struct sock*,struct sk_buff*),int*,int*,struct sk_buff**) ;
 int sk_busy_loop (struct sock*,unsigned int) ;
 int sk_can_busy_loop (struct sock*) ;
 int sock_error (struct sock*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct sk_buff *__skb_try_recv_datagram(struct sock *sk, unsigned int flags,
     void (*destructor)(struct sock *sk,
          struct sk_buff *skb),
     int *off, int *err,
     struct sk_buff **last)
{
 struct sk_buff_head *queue = &sk->sk_receive_queue;
 struct sk_buff *skb;
 unsigned long cpu_flags;



 int error = sock_error(sk);

 if (error)
  goto no_packet;

 do {






  spin_lock_irqsave(&queue->lock, cpu_flags);
  skb = __skb_try_recv_from_queue(sk, queue, flags, destructor,
      off, &error, last);
  spin_unlock_irqrestore(&queue->lock, cpu_flags);
  if (error)
   goto no_packet;
  if (skb)
   return skb;

  if (!sk_can_busy_loop(sk))
   break;

  sk_busy_loop(sk, flags & MSG_DONTWAIT);
 } while (READ_ONCE(sk->sk_receive_queue.prev) != *last);

 error = -EAGAIN;

no_packet:
 *err = error;
 return ((void*)0);
}
