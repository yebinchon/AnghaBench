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
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_hc_tx_ccid; } ;

/* Variables and functions */
#define  CCID_PACKET_DELAY 131 
#define  CCID_PACKET_ERR 130 
#define  CCID_PACKET_SEND_AT_ONCE 129 
#define  CCID_PACKET_WILL_DEQUEUE_LATER 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 long FUNC1 (int /*<<< orphan*/ ,struct sock*,struct sk_buff*) ; 
 int FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (char*,long) ; 
 struct dccp_sock* FUNC4 (struct sock*) ; 
 long FUNC5 (struct sock*,long) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 long FUNC8 (long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct sock *sk, long *time_budget)
{
	struct dccp_sock *dp = FUNC4(sk);
	struct sk_buff *skb;
	long delay, rc;

	while (*time_budget > 0 && (skb = FUNC10(&sk->sk_write_queue))) {
		rc = FUNC1(dp->dccps_hc_tx_ccid, sk, skb);

		switch (FUNC2(rc)) {
		case CCID_PACKET_WILL_DEQUEUE_LATER:
			/*
			 * If the CCID determines when to send, the next sending
			 * time is unknown or the CCID may not even send again
			 * (e.g. remote host crashes or lost Ack packets).
			 */
			FUNC0("CCID did not manage to send all packets\n");
			return;
		case CCID_PACKET_DELAY:
			delay = FUNC8(rc);
			if (delay > *time_budget)
				return;
			rc = FUNC5(sk, delay);
			if (rc < 0)
				return;
			*time_budget -= (delay - rc);
			/* check again if we can send now */
			break;
		case CCID_PACKET_SEND_AT_ONCE:
			FUNC6(sk);
			break;
		case CCID_PACKET_ERR:
			FUNC9(&sk->sk_write_queue);
			FUNC7(skb);
			FUNC3("packet discarded due to err=%ld\n", rc);
		}
	}
}