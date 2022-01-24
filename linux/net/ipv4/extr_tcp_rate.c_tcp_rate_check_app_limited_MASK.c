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
struct tcp_sock {scalar_t__ write_seq; scalar_t__ snd_nxt; scalar_t__ mss_cache; scalar_t__ snd_cwnd; scalar_t__ lost_out; scalar_t__ retrans_out; int app_limited; scalar_t__ delivered; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 

void FUNC4(struct sock *sk)
{
	struct tcp_sock *tp = FUNC3(sk);

	if (/* We have less than one packet to send. */
	    tp->write_seq - tp->snd_nxt < tp->mss_cache &&
	    /* Nothing in sending host's qdisc queues or NIC tx queue. */
	    FUNC1(sk) < FUNC0(1) &&
	    /* We are not limited by CWND. */
	    FUNC2(tp) < tp->snd_cwnd &&
	    /* All lost packets have been retransmitted. */
	    tp->lost_out <= tp->retrans_out)
		tp->app_limited =
			(tp->delivered + FUNC2(tp)) ? : 1;
}