
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int window_clamp; } ;
struct sock {int sk_userlocks; } ;
struct request_sock {int rsk_window_clamp; int rsk_rcv_wnd; } ;
struct inet_request_sock {int rcv_wscale; int wscale_ok; scalar_t__ tstamp_ok; } ;
struct dst_entry {int dummy; } ;
typedef int __u8 ;


 int READ_ONCE (int ) ;
 int RTAX_INITRWND ;
 int RTAX_WINDOW ;
 int SOCK_RCVBUF_LOCK ;
 int TCPOLEN_TSTAMP_ALIGNED ;
 void* dst_metric (struct dst_entry const*,int ) ;
 int dst_metric_advmss (struct dst_entry const*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 int tcp_full_space (struct sock const*) ;
 int tcp_mss_clamp (struct tcp_sock const*,int ) ;
 int tcp_rwnd_init_bpf (struct sock*) ;
 int tcp_select_initial_window (struct sock const*,int,int,int *,int*,int ,int *,int) ;
 struct tcp_sock* tcp_sk (struct sock const*) ;

void tcp_openreq_init_rwin(struct request_sock *req,
      const struct sock *sk_listener,
      const struct dst_entry *dst)
{
 struct inet_request_sock *ireq = inet_rsk(req);
 const struct tcp_sock *tp = tcp_sk(sk_listener);
 int full_space = tcp_full_space(sk_listener);
 u32 window_clamp;
 __u8 rcv_wscale;
 u32 rcv_wnd;
 int mss;

 mss = tcp_mss_clamp(tp, dst_metric_advmss(dst));
 window_clamp = READ_ONCE(tp->window_clamp);

 req->rsk_window_clamp = window_clamp ? : dst_metric(dst, RTAX_WINDOW);


 if (sk_listener->sk_userlocks & SOCK_RCVBUF_LOCK &&
     (req->rsk_window_clamp > full_space || req->rsk_window_clamp == 0))
  req->rsk_window_clamp = full_space;

 rcv_wnd = tcp_rwnd_init_bpf((struct sock *)req);
 if (rcv_wnd == 0)
  rcv_wnd = dst_metric(dst, RTAX_INITRWND);
 else if (full_space < rcv_wnd * mss)
  full_space = rcv_wnd * mss;


 tcp_select_initial_window(sk_listener, full_space,
  mss - (ireq->tstamp_ok ? TCPOLEN_TSTAMP_ALIGNED : 0),
  &req->rsk_rcv_wnd,
  &req->rsk_window_clamp,
  ireq->wscale_ok,
  &rcv_wscale,
  rcv_wnd);
 ireq->rcv_wscale = rcv_wscale;
}
