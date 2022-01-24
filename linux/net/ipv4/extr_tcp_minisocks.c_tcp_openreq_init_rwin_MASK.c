#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct tcp_sock {int /*<<< orphan*/  window_clamp; } ;
struct sock {int sk_userlocks; } ;
struct request_sock {int rsk_window_clamp; int /*<<< orphan*/  rsk_rcv_wnd; } ;
struct inet_request_sock {int /*<<< orphan*/  rcv_wscale; int /*<<< orphan*/  wscale_ok; scalar_t__ tstamp_ok; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTAX_INITRWND ; 
 int /*<<< orphan*/  RTAX_WINDOW ; 
 int SOCK_RCVBUF_LOCK ; 
 int TCPOLEN_TSTAMP_ALIGNED ; 
 void* FUNC1 (struct dst_entry const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry const*) ; 
 struct inet_request_sock* FUNC3 (struct request_sock*) ; 
 int FUNC4 (struct sock const*) ; 
 int FUNC5 (struct tcp_sock const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock const*,int,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct tcp_sock* FUNC8 (struct sock const*) ; 

void FUNC9(struct request_sock *req,
			   const struct sock *sk_listener,
			   const struct dst_entry *dst)
{
	struct inet_request_sock *ireq = FUNC3(req);
	const struct tcp_sock *tp = FUNC8(sk_listener);
	int full_space = FUNC4(sk_listener);
	u32 window_clamp;
	__u8 rcv_wscale;
	u32 rcv_wnd;
	int mss;

	mss = FUNC5(tp, FUNC2(dst));
	window_clamp = FUNC0(tp->window_clamp);
	/* Set this up on the first call only */
	req->rsk_window_clamp = window_clamp ? : FUNC1(dst, RTAX_WINDOW);

	/* limit the window selection if the user enforce a smaller rx buffer */
	if (sk_listener->sk_userlocks & SOCK_RCVBUF_LOCK &&
	    (req->rsk_window_clamp > full_space || req->rsk_window_clamp == 0))
		req->rsk_window_clamp = full_space;

	rcv_wnd = FUNC6((struct sock *)req);
	if (rcv_wnd == 0)
		rcv_wnd = FUNC1(dst, RTAX_INITRWND);
	else if (full_space < rcv_wnd * mss)
		full_space = rcv_wnd * mss;

	/* tcp_full_space because it is guaranteed to be the first packet */
	FUNC7(sk_listener, full_space,
		mss - (ireq->tstamp_ok ? TCPOLEN_TSTAMP_ALIGNED : 0),
		&req->rsk_rcv_wnd,
		&req->rsk_window_clamp,
		ireq->wscale_ok,
		&rcv_wscale,
		rcv_wnd);
	ireq->rcv_wscale = rcv_wscale;
}