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
struct tcp_sock {int srtt_us; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int FLAG_SACK_RENEGING ; 
 int /*<<< orphan*/  ICSK_TIME_RETRANS ; 
 int /*<<< orphan*/  TCP_RTO_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct tcp_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct sock *sk, int flag)
{
	if (flag & FLAG_SACK_RENEGING) {
		struct tcp_sock *tp = FUNC3(sk);
		unsigned long delay = FUNC1(FUNC4(tp->srtt_us >> 4),
					  FUNC2(10));

		FUNC0(sk, ICSK_TIME_RETRANS,
					  delay, TCP_RTO_MAX);
		return true;
	}
	return false;
}