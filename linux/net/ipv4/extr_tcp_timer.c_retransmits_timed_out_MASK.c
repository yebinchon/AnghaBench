#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_state; } ;
typedef  scalar_t__ s32 ;
struct TYPE_5__ {int /*<<< orphan*/  icsk_retransmits; } ;
struct TYPE_4__ {unsigned int retrans_stamp; } ;

/* Variables and functions */
 int TCPF_SYN_RECV ; 
 int TCPF_SYN_SENT ; 
 unsigned int TCP_RTO_MIN ; 
 TYPE_3__* FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned int FUNC2 (struct sock*,unsigned int,unsigned int) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 unsigned int FUNC4 (TYPE_1__*) ; 
 unsigned int FUNC5 (struct sock*) ; 

__attribute__((used)) static bool FUNC6(struct sock *sk,
				  unsigned int boundary,
				  unsigned int timeout)
{
	unsigned int start_ts;

	if (!FUNC0(sk)->icsk_retransmits)
		return false;

	start_ts = FUNC3(sk)->retrans_stamp;
	if (FUNC1(timeout == 0)) {
		unsigned int rto_base = TCP_RTO_MIN;

		if ((1 << sk->sk_state) & (TCPF_SYN_SENT | TCPF_SYN_RECV))
			rto_base = FUNC5(sk);
		timeout = FUNC2(sk, boundary, rto_base);
	}

	return (s32)(FUNC4(FUNC3(sk)) - start_ts - timeout) >= 0;
}