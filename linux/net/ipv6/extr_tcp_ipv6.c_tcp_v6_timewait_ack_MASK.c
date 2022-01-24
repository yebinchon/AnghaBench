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
struct tcp_timewait_sock {int tw_rcv_wnd; int /*<<< orphan*/  tw_ts_recent; scalar_t__ tw_ts_offset; int /*<<< orphan*/  tw_rcv_nxt; int /*<<< orphan*/  tw_snd_nxt; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_timewait_sock {int tw_rcv_wscale; int /*<<< orphan*/  tw_priority; int /*<<< orphan*/  tw_flowlabel; int /*<<< orphan*/  tw_tclass; int /*<<< orphan*/  tw_bound_dev_if; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inet_timewait_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet_timewait_sock*) ; 
 scalar_t__ FUNC3 () ; 
 struct tcp_timewait_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_timewait_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, struct sk_buff *skb)
{
	struct inet_timewait_sock *tw = FUNC1(sk);
	struct tcp_timewait_sock *tcptw = FUNC4(sk);

	FUNC6(sk, skb, tcptw->tw_snd_nxt, tcptw->tw_rcv_nxt,
			tcptw->tw_rcv_wnd >> tw->tw_rcv_wscale,
			FUNC3() + tcptw->tw_ts_offset,
			tcptw->tw_ts_recent, tw->tw_bound_dev_if, FUNC5(tcptw),
			tw->tw_tclass, FUNC0(tw->tw_flowlabel), tw->tw_priority);

	FUNC2(tw);
}