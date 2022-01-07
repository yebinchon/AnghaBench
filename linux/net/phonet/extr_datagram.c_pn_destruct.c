
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; } ;


 int skb_queue_purge (int *) ;

__attribute__((used)) static void pn_destruct(struct sock *sk)
{
 skb_queue_purge(&sk->sk_receive_queue);
}
