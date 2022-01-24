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
typedef  scalar_t__ u32 ;
struct tcp_sock {scalar_t__ compressed_ack; scalar_t__ rcv_nxt; int /*<<< orphan*/  compressed_ack_timer; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICSK_TIME_DACK ; 
 int /*<<< orphan*/  LINUX_MIB_TCPACKCOMPRESSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ TCP_FASTRETRANS_THRESH ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,unsigned int) ; 
 struct tcp_sock* FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline void FUNC8(struct sock *sk, unsigned int pkts,
				      u32 rcv_nxt)
{
	struct tcp_sock *tp = FUNC6(sk);

	if (FUNC7(tp->compressed_ack > TCP_FASTRETRANS_THRESH)) {
		FUNC0(FUNC4(sk), LINUX_MIB_TCPACKCOMPRESSED,
			      tp->compressed_ack - TCP_FASTRETRANS_THRESH);
		tp->compressed_ack = TCP_FASTRETRANS_THRESH;
		if (FUNC2(&tp->compressed_ack_timer) == 1)
			FUNC1(sk);
	}

	if (FUNC7(rcv_nxt != tp->rcv_nxt))
		return;  /* Special ACK sent by DCTCP to reflect ECN */
	FUNC5(sk, pkts);
	FUNC3(sk, ICSK_TIME_DACK);
}