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
struct tcp_sock {int /*<<< orphan*/  last_oow_ack_time; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int sysctl_tcp_challenge_ack_limit; } ;
struct net {TYPE_1__ ipv4; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  LINUX_MIB_TCPACKSKIPPEDCHALLENGE ; 
 int /*<<< orphan*/  LINUX_MIB_TCPCHALLENGEACK ; 
 int /*<<< orphan*/  FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int) ; 
 scalar_t__ FUNC3 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int jiffies ; 
 int FUNC4 (int) ; 
 struct net* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 

__attribute__((used)) static void FUNC8(struct sock *sk, const struct sk_buff *skb)
{
	/* unprotected vars, we dont care of overwrites */
	static u32 challenge_timestamp;
	static unsigned int challenge_count;
	struct tcp_sock *tp = FUNC7(sk);
	struct net *net = FUNC5(sk);
	u32 count, now;

	/* First check our per-socket dupack rate limit. */
	if (FUNC3(net,
				   LINUX_MIB_TCPACKSKIPPEDCHALLENGE,
				   &tp->last_oow_ack_time))
		return;

	/* Then check host-wide RFC 5961 rate limit. */
	now = jiffies / HZ;
	if (now != challenge_timestamp) {
		u32 ack_limit = net->ipv4.sysctl_tcp_challenge_ack_limit;
		u32 half = (ack_limit + 1) >> 1;

		challenge_timestamp = now;
		FUNC2(challenge_count, half + FUNC4(ack_limit));
	}
	count = FUNC1(challenge_count);
	if (count > 0) {
		FUNC2(challenge_count, count - 1);
		FUNC0(net, LINUX_MIB_TCPCHALLENGEACK);
		FUNC6(sk);
	}
}