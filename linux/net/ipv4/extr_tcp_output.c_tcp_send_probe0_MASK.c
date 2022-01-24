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
struct tcp_sock {scalar_t__ packets_out; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ sysctl_tcp_retries2; } ;
struct net {TYPE_1__ ipv4; } ;
struct inet_connection_sock {scalar_t__ icsk_backoff; scalar_t__ icsk_probes_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICSK_TIME_PROBE0 ; 
 int /*<<< orphan*/  LINUX_MIB_TCPWINPROBE ; 
 unsigned long TCP_RESOURCE_PROBE_INTERVAL ; 
 int /*<<< orphan*/  TCP_RTO_MAX ; 
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 struct net* FUNC1 (struct sock*) ; 
 unsigned long FUNC2 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct sock*) ; 
 int FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 

void FUNC7(struct sock *sk)
{
	struct inet_connection_sock *icsk = FUNC0(sk);
	struct tcp_sock *tp = FUNC4(sk);
	struct net *net = FUNC1(sk);
	unsigned long timeout;
	int err;

	err = FUNC6(sk, LINUX_MIB_TCPWINPROBE);

	if (tp->packets_out || FUNC5(sk)) {
		/* Cancel probe timer, if it is not required. */
		icsk->icsk_probes_out = 0;
		icsk->icsk_backoff = 0;
		return;
	}

	icsk->icsk_probes_out++;
	if (err <= 0) {
		if (icsk->icsk_backoff < net->ipv4.sysctl_tcp_retries2)
			icsk->icsk_backoff++;
		timeout = FUNC2(sk, TCP_RTO_MAX);
	} else {
		/* If packet was not sent due to local congestion,
		 * Let senders fight for local resources conservatively.
		 */
		timeout = TCP_RESOURCE_PROBE_INTERVAL;
	}
	FUNC3(sk, ICSK_TIME_PROBE0, timeout, TCP_RTO_MAX, NULL);
}