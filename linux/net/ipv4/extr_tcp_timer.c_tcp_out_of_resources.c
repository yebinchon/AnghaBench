
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int packets_out; int snd_wnd; scalar_t__ lsndtime; } ;
struct sock {scalar_t__ sk_err_soft; } ;
typedef int s32 ;


 int GFP_ATOMIC ;
 int LINUX_MIB_TCPABORTONMEMORY ;
 int TCP_RTO_MAX ;
 int TCP_TIMEWAIT_LEN ;
 int __NET_INC_STATS (int ,int ) ;
 int check_net (int ) ;
 int sock_net (struct sock*) ;
 scalar_t__ tcp_check_oom (struct sock*,int) ;
 int tcp_done (struct sock*) ;
 scalar_t__ tcp_jiffies32 ;
 int tcp_send_active_reset (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static int tcp_out_of_resources(struct sock *sk, bool do_reset)
{
 struct tcp_sock *tp = tcp_sk(sk);
 int shift = 0;



 if ((s32)(tcp_jiffies32 - tp->lsndtime) > 2*TCP_RTO_MAX || !do_reset)
  shift++;


 if (sk->sk_err_soft)
  shift++;

 if (tcp_check_oom(sk, shift)) {


  if ((s32)(tcp_jiffies32 - tp->lsndtime) <= TCP_TIMEWAIT_LEN ||

      (!tp->snd_wnd && !tp->packets_out))
   do_reset = 1;
  if (do_reset)
   tcp_send_active_reset(sk, GFP_ATOMIC);
  tcp_done(sk);
  __NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPABORTONMEMORY);
  return 1;
 }

 if (!check_net(sock_net(sk))) {

  tcp_done(sk);
  return 1;
 }

 return 0;
}
