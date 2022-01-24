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
struct tcp_sock {int snd_cwnd; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tcp_flags; } ;

/* Variables and functions */
 int TCPHDR_FIN ; 
 TYPE_1__* FUNC0 (struct sk_buff const*) ; 
 int FUNC1 (int,unsigned int) ; 
 unsigned int FUNC2 (int,int) ; 
 int FUNC3 (struct tcp_sock const*) ; 
 int FUNC4 (struct sk_buff const*) ; 

__attribute__((used)) static inline unsigned int FUNC5(const struct tcp_sock *tp,
					 const struct sk_buff *skb)
{
	u32 in_flight, cwnd, halfcwnd;

	/* Don't be strict about the congestion window for the final FIN.  */
	if ((FUNC0(skb)->tcp_flags & TCPHDR_FIN) &&
	    FUNC4(skb) == 1)
		return 1;

	in_flight = FUNC3(tp);
	cwnd = tp->snd_cwnd;
	if (in_flight >= cwnd)
		return 0;

	/* For better scheduling, ensure we have at least
	 * 2 GSO packets in flight.
	 */
	halfcwnd = FUNC1(cwnd >> 1, 1U);
	return FUNC2(halfcwnd, cwnd - in_flight);
}