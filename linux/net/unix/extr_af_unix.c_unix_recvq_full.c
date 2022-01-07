
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_max_ack_backlog; int sk_receive_queue; } ;


 scalar_t__ skb_queue_len (int *) ;

__attribute__((used)) static inline int unix_recvq_full(struct sock const *sk)
{
 return skb_queue_len(&sk->sk_receive_queue) > sk->sk_max_ack_backlog;
}
