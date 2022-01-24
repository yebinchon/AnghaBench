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
struct request_sock {int dummy; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_rto; } ;
struct dccp_sock {int /*<<< orphan*/  dccps_gsr; int /*<<< orphan*/  dccps_isr; int /*<<< orphan*/  dccps_iss; int /*<<< orphan*/  dccps_gar; int /*<<< orphan*/  dccps_gss; int /*<<< orphan*/  dccps_featneg; int /*<<< orphan*/  dccps_timestamp_time; int /*<<< orphan*/  dccps_timestamp_echo; int /*<<< orphan*/  dccps_service; int /*<<< orphan*/ * dccps_service_list; int /*<<< orphan*/ * dccps_hc_rx_ackvec; int /*<<< orphan*/  dccps_role; } ;
struct dccp_request_sock {int /*<<< orphan*/  dreq_featneg; int /*<<< orphan*/  dreq_gsr; int /*<<< orphan*/  dreq_isr; int /*<<< orphan*/  dreq_gss; int /*<<< orphan*/  dreq_iss; int /*<<< orphan*/  dreq_timestamp_time; int /*<<< orphan*/  dreq_timestamp_echo; int /*<<< orphan*/  dreq_service; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCCP_MIB_PASSIVEOPENS ; 
 int /*<<< orphan*/  DCCP_ROLE_SERVER ; 
 int /*<<< orphan*/  DCCP_TIMEOUT_INIT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct dccp_request_sock* FUNC4 (struct request_sock const*) ; 
 struct dccp_sock* FUNC5 (struct sock*) ; 
 struct inet_connection_sock* FUNC6 (struct sock*) ; 
 struct sock* FUNC7 (struct sock const*,struct request_sock const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 

struct sock *FUNC9(const struct sock *sk,
				       const struct request_sock *req,
				       const struct sk_buff *skb)
{
	/*
	 * Step 3: Process LISTEN state
	 *
	 *   (* Generate a new socket and switch to that socket *)
	 *   Set S := new socket for this port pair
	 */
	struct sock *newsk = FUNC7(sk, req, GFP_ATOMIC);

	if (newsk != NULL) {
		struct dccp_request_sock *dreq = FUNC4(req);
		struct inet_connection_sock *newicsk = FUNC6(newsk);
		struct dccp_sock *newdp = FUNC5(newsk);

		newdp->dccps_role	    = DCCP_ROLE_SERVER;
		newdp->dccps_hc_rx_ackvec   = NULL;
		newdp->dccps_service_list   = NULL;
		newdp->dccps_service	    = dreq->dreq_service;
		newdp->dccps_timestamp_echo = dreq->dreq_timestamp_echo;
		newdp->dccps_timestamp_time = dreq->dreq_timestamp_time;
		newicsk->icsk_rto	    = DCCP_TIMEOUT_INIT;

		FUNC0(&newdp->dccps_featneg);
		/*
		 * Step 3: Process LISTEN state
		 *
		 *    Choose S.ISS (initial seqno) or set from Init Cookies
		 *    Initialize S.GAR := S.ISS
		 *    Set S.ISR, S.GSR from packet (or Init Cookies)
		 *
		 *    Setting AWL/AWH and SWL/SWH happens as part of the feature
		 *    activation below, as these windows all depend on the local
		 *    and remote Sequence Window feature values (7.5.2).
		 */
		newdp->dccps_iss = dreq->dreq_iss;
		newdp->dccps_gss = dreq->dreq_gss;
		newdp->dccps_gar = newdp->dccps_iss;
		newdp->dccps_isr = dreq->dreq_isr;
		newdp->dccps_gsr = dreq->dreq_gsr;

		/*
		 * Activate features: initialise CCIDs, sequence windows etc.
		 */
		if (FUNC2(newsk, &dreq->dreq_featneg)) {
			FUNC8(newsk);
			return NULL;
		}
		FUNC3(newsk);

		FUNC1(DCCP_MIB_PASSIVEOPENS);
	}
	return newsk;
}