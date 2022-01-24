#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tcphdr {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  rcv_wscale; scalar_t__ ts_recent_stamp; scalar_t__ user_mss; scalar_t__ mss_clamp; } ;
struct tcp_sock {int tcp_header_len; scalar_t__ window_clamp; scalar_t__ rcv_nxt; int /*<<< orphan*/  copied_seq; scalar_t__ rcv_wup; int /*<<< orphan*/  rcv_tstamp; int /*<<< orphan*/  repair; scalar_t__ write_seq; int /*<<< orphan*/  snd_nxt; scalar_t__ snd_up; scalar_t__ snd_sml; scalar_t__ snd_una; scalar_t__ snd_wnd; int /*<<< orphan*/  rcv_wnd; int /*<<< orphan*/  rcv_ssthresh; TYPE_3__ rx_opt; scalar_t__ advmss; scalar_t__ max_window; TYPE_1__* af_specific; } ;
struct sock {int sk_userlocks; scalar_t__ sk_err; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_10__ {scalar_t__ icsk_retransmits; int /*<<< orphan*/  icsk_rto; } ;
struct TYPE_7__ {int /*<<< orphan*/  sysctl_tcp_window_scaling; scalar_t__ sysctl_tcp_timestamps; } ;
struct TYPE_9__ {TYPE_2__ ipv4; } ;
struct TYPE_6__ {scalar_t__ (* md5_lookup ) (struct sock*,struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RTAX_INITRWND ; 
 int /*<<< orphan*/  RTAX_WINDOW ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int SOCK_RCVBUF_LOCK ; 
 scalar_t__ TCPOLEN_MD5SIG_ALIGNED ; 
 scalar_t__ TCPOLEN_TSTAMP_ALIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct dst_entry* FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct dst_entry const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_entry const*) ; 
 TYPE_5__* FUNC5 (struct sock*) ; 
 scalar_t__ FUNC6 (int) ; 
 TYPE_4__* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sock*,struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct dst_entry const*) ; 
 int /*<<< orphan*/  FUNC11 (struct tcp_sock*) ; 
 scalar_t__ FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  tcp_jiffies32 ; 
 scalar_t__ FUNC15 (struct tcp_sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 scalar_t__ FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct tcp_sock* FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 

__attribute__((used)) static void FUNC23(struct sock *sk)
{
	const struct dst_entry *dst = FUNC1(sk);
	struct tcp_sock *tp = FUNC19(sk);
	__u8 rcv_wscale;
	u32 rcv_wnd;

	/* We'll fix this up when we get a response from the other end.
	 * See tcp_input.c:tcp_rcv_state_process case TCP_SYN_SENT.
	 */
	tp->tcp_header_len = sizeof(struct tcphdr);
	if (FUNC7(sk)->ipv4.sysctl_tcp_timestamps)
		tp->tcp_header_len += TCPOLEN_TSTAMP_ALIGNED;

#ifdef CONFIG_TCP_MD5SIG
	if (tp->af_specific->md5_lookup(sk, sk))
		tp->tcp_header_len += TCPOLEN_MD5SIG_ALIGNED;
#endif

	/* If user gave his TCP_MAXSEG, record it to clamp */
	if (tp->rx_opt.user_mss)
		tp->rx_opt.mss_clamp = tp->rx_opt.user_mss;
	tp->max_window = 0;
	FUNC16(sk);
	FUNC20(sk, FUNC4(dst));

	FUNC10(sk, dst);

	if (!tp->window_clamp)
		tp->window_clamp = FUNC2(dst, RTAX_WINDOW);
	tp->advmss = FUNC15(tp, FUNC3(dst));

	FUNC14(sk);

	/* limit the window selection if the user enforce a smaller rx buffer */
	if (sk->sk_userlocks & SOCK_RCVBUF_LOCK &&
	    (tp->window_clamp > FUNC12(sk) || tp->window_clamp == 0))
		tp->window_clamp = FUNC12(sk);

	rcv_wnd = FUNC17(sk);
	if (rcv_wnd == 0)
		rcv_wnd = FUNC2(dst, RTAX_INITRWND);

	FUNC18(sk, FUNC12(sk),
				  tp->advmss - (tp->rx_opt.ts_recent_stamp ? tp->tcp_header_len - sizeof(struct tcphdr) : 0),
				  &tp->rcv_wnd,
				  &tp->window_clamp,
				  FUNC7(sk)->ipv4.sysctl_tcp_window_scaling,
				  &rcv_wscale,
				  rcv_wnd);

	tp->rx_opt.rcv_wscale = rcv_wscale;
	tp->rcv_ssthresh = tp->rcv_wnd;

	sk->sk_err = 0;
	FUNC8(sk, SOCK_DONE);
	tp->snd_wnd = 0;
	FUNC13(tp, 0);
	FUNC22(sk);
	tp->snd_una = tp->write_seq;
	tp->snd_sml = tp->write_seq;
	tp->snd_up = tp->write_seq;
	FUNC0(tp->snd_nxt, tp->write_seq);

	if (FUNC6(!tp->repair))
		tp->rcv_nxt = 0;
	else
		tp->rcv_tstamp = tcp_jiffies32;
	tp->rcv_wup = tp->rcv_nxt;
	FUNC0(tp->copied_seq, tp->rcv_nxt);

	FUNC5(sk)->icsk_rto = FUNC21(sk);
	FUNC5(sk)->icsk_retransmits = 0;
	FUNC11(tp);
}