
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_error_queue; int sk_receive_queue; } ;


 int skb_queue_purge (int *) ;

__attribute__((used)) static void can_sock_destruct(struct sock *sk)
{
 skb_queue_purge(&sk->sk_receive_queue);
 skb_queue_purge(&sk->sk_error_queue);
}
