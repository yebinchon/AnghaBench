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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct tcp_sock {int srtt_us; scalar_t__ snd_cwnd; } ;
struct sock {int /*<<< orphan*/  sk_pacing_rate; } ;
struct bbr {int has_seen_rtt; } ;

/* Variables and functions */
 int BW_UNIT ; 
 int /*<<< orphan*/  USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bbr_high_gain ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct bbr* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct tcp_sock *tp = FUNC4(sk);
	struct bbr *bbr = FUNC2(sk);
	u64 bw;
	u32 rtt_us;

	if (tp->srtt_us) {		/* any RTT sample yet? */
		rtt_us = FUNC3(tp->srtt_us >> 3, 1U);
		bbr->has_seen_rtt = 1;
	} else {			 /* no RTT sample yet */
		rtt_us = USEC_PER_MSEC;	 /* use nominal default RTT */
	}
	bw = (u64)tp->snd_cwnd * BW_UNIT;
	FUNC1(bw, rtt_us);
	sk->sk_pacing_rate = FUNC0(sk, bw, bbr_high_gain);
}