
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;


 int GFP_ATOMIC ;
 scalar_t__ TCP_CLOSE ;
 int sk_gfp_mask (struct sock*,int ) ;
 int tcp_check_probe_timer (struct sock*) ;
 scalar_t__ tcp_write_xmit (struct sock*,unsigned int,int,int ,int ) ;
 scalar_t__ unlikely (int) ;

void __tcp_push_pending_frames(struct sock *sk, unsigned int cur_mss,
          int nonagle)
{




 if (unlikely(sk->sk_state == TCP_CLOSE))
  return;

 if (tcp_write_xmit(sk, cur_mss, nonagle, 0,
      sk_gfp_mask(sk, GFP_ATOMIC)))
  tcp_check_probe_timer(sk);
}
