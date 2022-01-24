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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPABORTFAILED ; 
 int /*<<< orphan*/  MAX_TCP_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCPHDR_ACK ; 
 int TCPHDR_RST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_MIB_OUTRSTS ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 scalar_t__ FUNC9 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ *) ; 

void FUNC11(struct sock *sk, gfp_t priority)
{
	struct sk_buff *skb;

	FUNC1(FUNC4(sk), TCP_MIB_OUTRSTS);

	/* NOTE: No TCP options attached and we never retransmit this. */
	skb = FUNC2(MAX_TCP_HEADER, priority);
	if (!skb) {
		FUNC0(FUNC4(sk), LINUX_MIB_TCPABORTFAILED);
		return;
	}

	/* Reserve space for headers and prepare control bits. */
	FUNC3(skb, MAX_TCP_HEADER);
	FUNC6(skb, FUNC5(sk),
			     TCPHDR_ACK | TCPHDR_RST);
	FUNC7(FUNC8(sk));
	/* Send it off. */
	if (FUNC9(sk, skb, 0, priority))
		FUNC0(FUNC4(sk), LINUX_MIB_TCPABORTFAILED);

	/* skb of trace_tcp_send_reset() keeps the skb that caused RST,
	 * skb here is different to the troublesome skb, so use NULL
	 */
	FUNC10(sk, NULL);
}