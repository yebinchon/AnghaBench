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
typedef  scalar_t__ u32 ;
struct tcp_sock {scalar_t__ lsndtime; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ const lrcvtime; scalar_t__ ato; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;

/* Variables and functions */
 int /*<<< orphan*/  CA_EVENT_TX_START ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__ const) ; 
 struct inet_connection_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 scalar_t__ tcp_jiffies32 ; 
 scalar_t__ FUNC4 (struct tcp_sock*) ; 

__attribute__((used)) static void FUNC5(struct tcp_sock *tp,
				struct sock *sk)
{
	struct inet_connection_sock *icsk = FUNC1(sk);
	const u32 now = tcp_jiffies32;

	if (FUNC4(tp) == 0)
		FUNC3(sk, CA_EVENT_TX_START);

	/* If this is the first data packet sent in response to the
	 * previous received data,
	 * and it is a reply for ato after last received packet,
	 * increase pingpong count.
	 */
	if (FUNC0(tp->lsndtime, icsk->icsk_ack.lrcvtime) &&
	    (u32)(now - icsk->icsk_ack.lrcvtime) < icsk->icsk_ack.ato)
		FUNC2(sk);

	tp->lsndtime = now;
}