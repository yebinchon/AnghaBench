#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ time; scalar_t__ seq; } ;
struct tcp_sock {scalar_t__ tcp_mstamp; TYPE_1__ rcv_rtt_est; scalar_t__ rcv_wnd; scalar_t__ rcv_nxt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tcp_sock*,int,int) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void FUNC3(struct tcp_sock *tp)
{
	u32 delta_us;

	if (tp->rcv_rtt_est.time == 0)
		goto new_measure;
	if (FUNC0(tp->rcv_nxt, tp->rcv_rtt_est.seq))
		return;
	delta_us = FUNC2(tp->tcp_mstamp, tp->rcv_rtt_est.time);
	if (!delta_us)
		delta_us = 1;
	FUNC1(tp, delta_us, 1);

new_measure:
	tp->rcv_rtt_est.seq = tp->rcv_nxt + tp->rcv_wnd;
	tp->rcv_rtt_est.time = tp->tcp_mstamp;
}