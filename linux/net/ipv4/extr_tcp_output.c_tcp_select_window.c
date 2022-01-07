
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_6__ {int rcv_wscale; } ;
struct tcp_sock {scalar_t__ rcv_wnd; scalar_t__ pred_flags; TYPE_2__ rx_opt; int rcv_nxt; int rcv_wup; } ;
struct sock {int dummy; } ;
struct TYPE_5__ {scalar_t__ sysctl_tcp_workaround_signed_windows; } ;
struct TYPE_7__ {TYPE_1__ ipv4; } ;


 scalar_t__ ALIGN (scalar_t__,int) ;
 int LINUX_MIB_TCPFROMZEROWINDOWADV ;
 int LINUX_MIB_TCPTOZEROWINDOWADV ;
 int LINUX_MIB_TCPWANTZEROWINDOWADV ;
 unsigned int MAX_TCP_WINDOW ;
 int NET_INC_STATS (TYPE_3__*,int ) ;
 scalar_t__ __tcp_select_window (struct sock*) ;
 scalar_t__ min (scalar_t__,unsigned int) ;
 TYPE_3__* sock_net (struct sock*) ;
 scalar_t__ tcp_receive_window (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u16 tcp_select_window(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u32 old_win = tp->rcv_wnd;
 u32 cur_win = tcp_receive_window(tp);
 u32 new_win = __tcp_select_window(sk);


 if (new_win < cur_win) {







  if (new_win == 0)
   NET_INC_STATS(sock_net(sk),
          LINUX_MIB_TCPWANTZEROWINDOWADV);
  new_win = ALIGN(cur_win, 1 << tp->rx_opt.rcv_wscale);
 }
 tp->rcv_wnd = new_win;
 tp->rcv_wup = tp->rcv_nxt;




 if (!tp->rx_opt.rcv_wscale &&
     sock_net(sk)->ipv4.sysctl_tcp_workaround_signed_windows)
  new_win = min(new_win, MAX_TCP_WINDOW);
 else
  new_win = min(new_win, (65535U << tp->rx_opt.rcv_wscale));


 new_win >>= tp->rx_opt.rcv_wscale;


 if (new_win == 0) {
  tp->pred_flags = 0;
  if (old_win)
   NET_INC_STATS(sock_net(sk),
          LINUX_MIB_TCPTOZEROWINDOWADV);
 } else if (old_win == 0) {
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPFROMZEROWINDOWADV);
 }

 return new_win;
}
