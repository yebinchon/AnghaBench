
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sock {scalar_t__ sk_err; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int dccph_reset_code; } ;


 int DCCP_TIME_WAIT ;
 int POLL_ERR ;
 int SOCK_DEAD ;
 int SOCK_WAKE_IO ;
 int dccp_fin (struct sock*,struct sk_buff*) ;
 TYPE_1__* dccp_hdr_reset (struct sk_buff*) ;
 scalar_t__ dccp_reset_code_convert (int ) ;
 int dccp_time_wait (struct sock*,int ,int ) ;
 int sk_wake_async (struct sock*,int ,int ) ;
 int sock_flag (struct sock*,int ) ;

__attribute__((used)) static void dccp_rcv_reset(struct sock *sk, struct sk_buff *skb)
{
 u16 err = dccp_reset_code_convert(dccp_hdr_reset(skb)->dccph_reset_code);

 sk->sk_err = err;


 dccp_fin(sk, skb);

 if (err && !sock_flag(sk, SOCK_DEAD))
  sk_wake_async(sk, SOCK_WAKE_IO, POLL_ERR);
 dccp_time_wait(sk, DCCP_TIME_WAIT, 0);
}
