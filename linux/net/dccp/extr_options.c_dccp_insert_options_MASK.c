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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_timestamp_echo; scalar_t__ dccps_hc_rx_insert_options; int /*<<< orphan*/  dccps_hc_rx_ccid; scalar_t__ dccps_send_ndp_count; } ;
struct TYPE_2__ {scalar_t__ dccpd_type; scalar_t__ dccpd_opt_len; } ;

/* Variables and functions */
 scalar_t__ DCCP_PKT_DATA ; 
 scalar_t__ DCCP_PKT_REQUEST ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct dccp_sock*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct dccp_sock*,int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct dccp_sock* FUNC9 (struct sock*) ; 

int FUNC10(struct sock *sk, struct sk_buff *skb)
{
	struct dccp_sock *dp = FUNC9(sk);

	FUNC0(skb)->dccpd_opt_len = 0;

	if (dp->dccps_send_ndp_count && FUNC5(sk, skb))
		return -1;

	if (FUNC0(skb)->dccpd_type != DCCP_PKT_DATA) {

		/* Feature Negotiation */
		if (FUNC3(dp, NULL, skb))
			return -1;

		if (FUNC0(skb)->dccpd_type == DCCP_PKT_REQUEST) {
			/*
			 * Obtain RTT sample from Request/Response exchange.
			 * This is currently used for TFRC initialisation.
			 */
			if (FUNC7(skb))
				return -1;

		} else if (FUNC2(sk) &&
			   FUNC4(sk, skb)) {
				return -1;
		}
	}

	if (dp->dccps_hc_rx_insert_options) {
		if (FUNC1(dp->dccps_hc_rx_ccid, sk, skb))
			return -1;
		dp->dccps_hc_rx_insert_options = 0;
	}

	if (dp->dccps_timestamp_echo != 0 &&
	    FUNC8(dp, NULL, skb))
		return -1;

	FUNC6(skb);
	return 0;
}