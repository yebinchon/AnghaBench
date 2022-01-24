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
struct tcpnv {int cwnd_growth_factor; int /*<<< orphan*/  nv_allow_cwnd_growth; } ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 struct tcpnv* FUNC0 (struct sock*) ; 
 int FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tcp_sock*,int,int) ; 
 scalar_t__ FUNC3 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 
 int FUNC6 (struct tcp_sock*,int) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, u32 ack, u32 acked)
{
	struct tcp_sock *tp = FUNC5(sk);
	struct tcpnv *ca = FUNC0(sk);
	u32 cnt;

	if (!FUNC4(sk))
		return;

	/* Only grow cwnd if NV has not detected congestion */
	if (!ca->nv_allow_cwnd_growth)
		return;

	if (FUNC3(tp)) {
		acked = FUNC6(tp, acked);
		if (!acked)
			return;
	}

	if (ca->cwnd_growth_factor < 0) {
		cnt = tp->snd_cwnd << -ca->cwnd_growth_factor;
		FUNC2(tp, cnt, acked);
	} else {
		cnt = FUNC1(4U, tp->snd_cwnd >> ca->cwnd_growth_factor);
		FUNC2(tp, cnt, acked);
	}
}