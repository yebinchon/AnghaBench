#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int len; } ;
struct dccp_sock {int dccps_mss_cache; int /*<<< orphan*/  dccps_gsr; scalar_t__ dccps_sync_scheduled; int /*<<< orphan*/  dccps_hc_tx_ccid; int /*<<< orphan*/  dccps_featneg; } ;
struct TYPE_4__ {void* dccpd_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  icsk_rto; } ;

/* Variables and functions */
 int DCCP_FEATNEG_OVERHEAD ; 
 scalar_t__ DCCP_PARTOPEN ; 
 void* DCCP_PKT_DATA ; 
 void* DCCP_PKT_DATAACK ; 
 int /*<<< orphan*/  DCCP_PKT_SYNC ; 
 int /*<<< orphan*/  DCCP_RTO_MAX ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  ICSK_TIME_DACK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sock*,int) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 struct sk_buff* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dccp_sock* FUNC9 (struct sock*) ; 
 int FUNC10 (struct sock*,struct sk_buff*) ; 
 TYPE_1__* FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct sock *sk)
{
	int err, len;
	struct dccp_sock *dp = FUNC9(sk);
	struct sk_buff *skb = FUNC6(sk);

	if (FUNC15(skb == NULL))
		return;
	len = skb->len;

	if (sk->sk_state == DCCP_PARTOPEN) {
		const u32 cur_mps = dp->dccps_mss_cache - DCCP_FEATNEG_OVERHEAD;
		/*
		 * See 8.1.5 - Handshake Completion.
		 *
		 * For robustness we resend Confirm options until the client has
		 * entered OPEN. During the initial feature negotiation, the MPS
		 * is smaller than usual, reduced by the Change/Confirm options.
		 */
		if (!FUNC14(&dp->dccps_featneg) && len > cur_mps) {
			FUNC1("Payload too large (%d) for featneg.\n", len);
			FUNC7(sk);
			FUNC4(&dp->dccps_featneg);
		}

		FUNC13(sk);
		FUNC12(sk, ICSK_TIME_DACK,
					      FUNC11(sk)->icsk_rto,
					      DCCP_RTO_MAX);
		FUNC0(skb)->dccpd_type = DCCP_PKT_DATAACK;
	} else if (FUNC3(sk)) {
		FUNC0(skb)->dccpd_type = DCCP_PKT_DATAACK;
	} else {
		FUNC0(skb)->dccpd_type = DCCP_PKT_DATA;
	}

	err = FUNC10(sk, skb);
	if (err)
		FUNC5("transmit_skb() returned err=%d\n", err);
	/*
	 * Register this one as sent even if an error occurred. To the remote
	 * end a local packet drop is indistinguishable from network loss, i.e.
	 * any local drop will eventually be reported via receiver feedback.
	 */
	FUNC2(dp->dccps_hc_tx_ccid, sk, len);

	/*
	 * If the CCID needs to transfer additional header options out-of-band
	 * (e.g. Ack Vectors or feature-negotiation options), it activates this
	 * flag to schedule a Sync. The Sync will automatically incorporate all
	 * currently pending header options, thus clearing the backlog.
	 */
	if (dp->dccps_sync_scheduled)
		FUNC8(sk, dp->dccps_gsr, DCCP_PKT_SYNC);
}