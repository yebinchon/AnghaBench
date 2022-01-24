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
struct dccp_sock {int /*<<< orphan*/  dccps_xmit_timer; int /*<<< orphan*/  dccps_hc_tx_ccid; } ;

/* Variables and functions */
#define  CCID_PACKET_DELAY 131 
#define  CCID_PACKET_ERR 130 
#define  CCID_PACKET_SEND_AT_ONCE 129 
#define  CCID_PACKET_WILL_DEQUEUE_LATER 128 
 int FUNC0 (int /*<<< orphan*/ ,struct sock*,struct sk_buff*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sock*) ; 
 struct dccp_sock* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC9(struct sock *sk)
{
	struct dccp_sock *dp = FUNC5(sk);
	struct sk_buff *skb;

	while ((skb = FUNC4(sk))) {
		int rc = FUNC0(dp->dccps_hc_tx_ccid, sk, skb);

		switch (FUNC1(rc)) {
		case CCID_PACKET_WILL_DEQUEUE_LATER:
			return;
		case CCID_PACKET_DELAY:
			FUNC8(sk, &dp->dccps_xmit_timer,
				       jiffies + FUNC7(rc));
			return;
		case CCID_PACKET_SEND_AT_ONCE:
			FUNC6(sk);
			break;
		case CCID_PACKET_ERR:
			FUNC3(sk, skb);
			FUNC2("packet discarded due to err=%d\n", rc);
		}
	}
}