
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int * sk_send_head; } ;
struct TYPE_4__ {int icsk_retransmits; TYPE_1__* icsk_af_ops; } ;
struct TYPE_3__ {scalar_t__ (* rebuild_header ) (struct sock*) ;} ;


 int EHOSTUNREACH ;
 int GFP_ATOMIC ;
 int WARN_ON (int ) ;
 int dccp_transmit_skb (struct sock*,int ) ;
 TYPE_2__* inet_csk (struct sock*) ;
 int skb_clone (int *,int ) ;
 scalar_t__ stub1 (struct sock*) ;

int dccp_retransmit_skb(struct sock *sk)
{
 WARN_ON(sk->sk_send_head == ((void*)0));

 if (inet_csk(sk)->icsk_af_ops->rebuild_header(sk) != 0)
  return -EHOSTUNREACH;


 inet_csk(sk)->icsk_retransmits++;

 return dccp_transmit_skb(sk, skb_clone(sk->sk_send_head, GFP_ATOMIC));
}
