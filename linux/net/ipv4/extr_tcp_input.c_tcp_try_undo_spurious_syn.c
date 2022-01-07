
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ rcv_tsecr; scalar_t__ saw_tstamp; } ;
struct tcp_sock {scalar_t__ retrans_stamp; scalar_t__ undo_marker; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;


 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_try_undo_spurious_syn(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u32 syn_stamp;





 syn_stamp = tp->retrans_stamp;
 if (tp->undo_marker && syn_stamp && tp->rx_opt.saw_tstamp &&
     syn_stamp == tp->rx_opt.rcv_tsecr)
  tp->undo_marker = 0;
}
