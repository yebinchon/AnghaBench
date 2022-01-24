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
typedef  int u32 ;
struct tcp_sock {int tcp_clock_cache; int /*<<< orphan*/  tcp_wstamp_ns; } ;
struct sock {int dummy; } ;
struct bbr {scalar_t__ pacing_gain; } ;

/* Variables and functions */
 scalar_t__ BBR_UNIT ; 
 int BW_SCALE ; 
 int /*<<< orphan*/  NSEC_PER_USEC ; 
 scalar_t__ FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct bbr* FUNC3 (struct sock*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct tcp_sock* FUNC5 (struct sock*) ; 

__attribute__((used)) static u32 FUNC6(struct sock *sk, u32 inflight_now)
{
	struct tcp_sock *tp = FUNC5(sk);
	struct bbr *bbr = FUNC3(sk);
	u64 now_ns, edt_ns, interval_us;
	u32 interval_delivered, inflight_at_edt;

	now_ns = tp->tcp_clock_cache;
	edt_ns = FUNC4(tp->tcp_wstamp_ns, now_ns);
	interval_us = FUNC2(edt_ns - now_ns, NSEC_PER_USEC);
	interval_delivered = (u64)FUNC0(sk) * interval_us >> BW_SCALE;
	inflight_at_edt = inflight_now;
	if (bbr->pacing_gain > BBR_UNIT)              /* increasing inflight */
		inflight_at_edt += FUNC1(sk);  /* include EDT skb */
	if (interval_delivered >= inflight_at_edt)
		return 0;
	return inflight_at_edt - interval_delivered;
}