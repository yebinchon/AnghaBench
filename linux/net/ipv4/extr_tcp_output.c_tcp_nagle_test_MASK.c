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
struct tcp_sock {int dummy; } ;
struct sk_buff {unsigned int len; } ;
struct TYPE_2__ {int tcp_flags; } ;

/* Variables and functions */
 int TCPHDR_FIN ; 
 int TCP_NAGLE_PUSH ; 
 TYPE_1__* FUNC0 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct tcp_sock const*,int) ; 
 scalar_t__ FUNC2 (struct tcp_sock const*) ; 

__attribute__((used)) static inline bool FUNC3(const struct tcp_sock *tp, const struct sk_buff *skb,
				  unsigned int cur_mss, int nonagle)
{
	/* Nagle rule does not apply to frames, which sit in the middle of the
	 * write_queue (they have no chances to get new data).
	 *
	 * This is implemented in the callers, where they modify the 'nonagle'
	 * argument based upon the location of SKB in the send queue.
	 */
	if (nonagle & TCP_NAGLE_PUSH)
		return true;

	/* Don't use the nagle rule for urgent data (or for the final FIN). */
	if (FUNC2(tp) || (FUNC0(skb)->tcp_flags & TCPHDR_FIN))
		return true;

	if (!FUNC1(skb->len < cur_mss, tp, nonagle))
		return true;

	return false;
}