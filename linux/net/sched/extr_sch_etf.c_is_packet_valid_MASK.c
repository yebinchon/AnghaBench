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
struct sock {scalar_t__ sk_clockid; scalar_t__ sk_txtime_deadline_mode; } ;
struct sk_buff {struct sock* sk; int /*<<< orphan*/  tstamp; } ;
struct etf_sched_data {scalar_t__ clockid; scalar_t__ deadline_mode; int /*<<< orphan*/  last; int /*<<< orphan*/  (* get_time ) () ;scalar_t__ skip_sock_check; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_TXTIME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct etf_sched_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static bool FUNC4(struct Qdisc *sch, struct sk_buff *nskb)
{
	struct etf_sched_data *q = FUNC1(sch);
	ktime_t txtime = nskb->tstamp;
	struct sock *sk = nskb->sk;
	ktime_t now;

	if (q->skip_sock_check)
		goto skip;

	if (!sk)
		return false;

	if (!FUNC2(sk, SOCK_TXTIME))
		return false;

	/* We don't perform crosstimestamping.
	 * Drop if packet's clockid differs from qdisc's.
	 */
	if (sk->sk_clockid != q->clockid)
		return false;

	if (sk->sk_txtime_deadline_mode != q->deadline_mode)
		return false;

skip:
	now = q->get_time();
	if (FUNC0(txtime, now) || FUNC0(txtime, q->last))
		return false;

	return true;
}