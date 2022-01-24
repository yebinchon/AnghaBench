#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tcp_sock {scalar_t__ pushed_seq; int /*<<< orphan*/  snd_nxt; scalar_t__ write_seq; scalar_t__ fastopen_req; int /*<<< orphan*/  retrans_stamp; struct sk_buff* repair; } ;
struct sock {int /*<<< orphan*/  sk_allocation; int /*<<< orphan*/  tcp_rtx_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ seq; } ;
struct TYPE_5__ {int /*<<< orphan*/  icsk_rto; TYPE_1__* icsk_af_ops; } ;
struct TYPE_4__ {scalar_t__ (* rebuild_header ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_SOCK_OPS_TCP_CONNECT_CB ; 
 int ECONNREFUSED ; 
 int EHOSTUNREACH ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ICSK_TIME_RETRANS ; 
 int /*<<< orphan*/  TCPHDR_SYN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_MIB_ACTIVEOPENS ; 
 int /*<<< orphan*/  TCP_RTO_MAX ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC16 (struct sock*) ; 
 int FUNC17 (struct sock*,struct sk_buff*) ; 
 struct tcp_sock* FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct tcp_sock*) ; 
 int FUNC20 (struct sock*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int) ; 

int FUNC22(struct sock *sk)
{
	struct tcp_sock *tp = FUNC18(sk);
	struct sk_buff *buff;
	int err;

	FUNC8(sk, BPF_SOCK_OPS_TCP_CONNECT_CB, 0, NULL);

	if (FUNC3(sk)->icsk_af_ops->rebuild_header(sk))
		return -EHOSTUNREACH; /* Routing failure or similar. */

	FUNC9(sk);

	if (FUNC21(tp->repair)) {
		FUNC12(sk, NULL);
		return 0;
	}

	buff = FUNC5(sk, 0, sk->sk_allocation, true);
	if (FUNC21(!buff))
		return -ENOBUFS;

	FUNC13(buff, tp->write_seq++, TCPHDR_SYN);
	FUNC14(tp);
	tp->retrans_stamp = FUNC19(tp);
	FUNC10(sk, buff);
	FUNC11(sk, buff);
	FUNC15(&sk->tcp_rtx_queue, buff);

	/* Send off SYN; include data in Fast Open. */
	err = tp->fastopen_req ? FUNC17(sk, buff) :
	      FUNC20(sk, buff, 1, sk->sk_allocation);
	if (err == -ECONNREFUSED)
		return err;

	/* We change tp->snd_nxt after the tcp_transmit_skb() call
	 * in order to make this packet get counted in tcpOutSegs.
	 */
	FUNC2(tp->snd_nxt, tp->write_seq);
	tp->pushed_seq = tp->write_seq;
	buff = FUNC16(sk);
	if (FUNC21(buff)) {
		FUNC2(tp->snd_nxt, FUNC1(buff)->seq);
		tp->pushed_seq	= FUNC1(buff)->seq;
	}
	FUNC0(FUNC6(sk), TCP_MIB_ACTIVEOPENS);

	/* Timer for repeating the SYN until an answer. */
	FUNC4(sk, ICSK_TIME_RETRANS,
				  FUNC3(sk)->icsk_rto, TCP_RTO_MAX);
	return 0;
}