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
struct tcp_sock {scalar_t__ prior_ssthresh; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int LINUX_MIB_TCPRENORECOVERY ; 
 int LINUX_MIB_TCPSACKRECOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TCP_CA_Recovery ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcp_sock*) ; 
 scalar_t__ FUNC6 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC8 (struct sock*) ; 

void FUNC9(struct sock *sk, bool ece_ack)
{
	struct tcp_sock *tp = FUNC8(sk);
	int mib_idx;

	if (FUNC6(tp))
		mib_idx = LINUX_MIB_TCPRENORECOVERY;
	else
		mib_idx = LINUX_MIB_TCPSACKRECOVERY;

	FUNC0(FUNC1(sk), mib_idx);

	tp->prior_ssthresh = 0;
	FUNC5(tp);

	if (!FUNC3(sk)) {
		if (!ece_ack)
			tp->prior_ssthresh = FUNC2(sk);
		FUNC4(sk);
	}
	FUNC7(sk, TCP_CA_Recovery);
}