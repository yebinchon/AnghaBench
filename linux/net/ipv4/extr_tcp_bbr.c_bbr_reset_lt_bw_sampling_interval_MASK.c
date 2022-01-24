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
struct tcp_sock {int /*<<< orphan*/  lost; int /*<<< orphan*/  delivered; int /*<<< orphan*/  delivered_mstamp; } ;
struct sock {int dummy; } ;
struct bbr {scalar_t__ lt_rtt_cnt; int /*<<< orphan*/  lt_last_lost; int /*<<< orphan*/  lt_last_delivered; int /*<<< orphan*/  lt_last_stamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  USEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bbr* FUNC1 (struct sock*) ; 
 struct tcp_sock* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct tcp_sock *tp = FUNC2(sk);
	struct bbr *bbr = FUNC1(sk);

	bbr->lt_last_stamp = FUNC0(tp->delivered_mstamp, USEC_PER_MSEC);
	bbr->lt_last_delivered = tp->delivered;
	bbr->lt_last_lost = tp->lost;
	bbr->lt_rtt_cnt = 0;
}