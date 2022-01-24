#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union sctp_subtype {int dummy; } sctp_subtype ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct sctp_errhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct sctp_cookie_preserve_param {int /*<<< orphan*/  lifespan_increment; TYPE_2__ param_hdr; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {TYPE_1__* skb; } ;
struct sctp_bind_addr {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  primary_path; } ;
struct TYPE_7__ {int /*<<< orphan*/  bind_addr; } ;
struct sctp_association {int init_err_counter; int max_init_attempts; TYPE_4__ peer; TYPE_3__ base; } ;
struct net {int dummy; } ;
typedef  enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
typedef  int /*<<< orphan*/  bht ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_5__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_CLEAR_INIT_TAG ; 
 int /*<<< orphan*/  SCTP_CMD_DEL_NON_PRIMARY ; 
 int /*<<< orphan*/  SCTP_CMD_HB_TIMERS_STOP ; 
 int /*<<< orphan*/  SCTP_CMD_INIT_COUNTER_INC ; 
 int /*<<< orphan*/  SCTP_CMD_INIT_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  SCTP_CMD_T1_RETRAN ; 
 int /*<<< orphan*/  SCTP_CMD_T3_RTX_TIMERS_STOP ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_START ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int SCTP_DISPOSITION_DELETE_TCB ; 
 int SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_STALE_COOKIE ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_COOKIE ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_INIT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SCTP_PARAM_COOKIE_PRESERVATIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_COOKIE_WAIT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_cmd_seq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sctp_chunk*,int,struct sctp_cookie_preserve_param*) ; 
 struct sctp_chunk* FUNC12 (struct sctp_association const*,struct sctp_bind_addr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum sctp_disposition FUNC13(
					struct net *net,
					const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const union sctp_subtype type,
					void *arg,
					struct sctp_cmd_seq *commands)
{
	int attempts = asoc->init_err_counter + 1;
	struct sctp_chunk *chunk = arg, *reply;
	struct sctp_cookie_preserve_param bht;
	struct sctp_bind_addr *bp;
	struct sctp_errhdr *err;
	u32 stale;

	if (attempts > asoc->max_init_attempts) {
		FUNC10(commands, SCTP_CMD_SET_SK_ERR,
				FUNC1(ETIMEDOUT));
		FUNC10(commands, SCTP_CMD_INIT_FAILED,
				FUNC3(SCTP_ERROR_STALE_COOKIE));
		return SCTP_DISPOSITION_DELETE_TCB;
	}

	err = (struct sctp_errhdr *)(chunk->skb->data);

	/* When calculating the time extension, an implementation
	 * SHOULD use the RTT information measured based on the
	 * previous COOKIE ECHO / ERROR exchange, and should add no
	 * more than 1 second beyond the measured RTT, due to long
	 * State Cookie lifetimes making the endpoint more subject to
	 * a replay attack.
	 * Measure of Staleness's unit is usec. (1/1000000 sec)
	 * Suggested Cookie Life-span Increment's unit is msec.
	 * (1/1000 sec)
	 * In general, if you use the suggested cookie life, the value
	 * found in the field of measure of staleness should be doubled
	 * to give ample time to retransmit the new cookie and thus
	 * yield a higher probability of success on the reattempt.
	 */
	stale = FUNC9(*(__be32 *)((u8 *)err + sizeof(*err)));
	stale = (stale * 2) / 1000;

	bht.param_hdr.type = SCTP_PARAM_COOKIE_PRESERVATIVE;
	bht.param_hdr.length = FUNC8(sizeof(bht));
	bht.lifespan_increment = FUNC7(stale);

	/* Build that new INIT chunk.  */
	bp = (struct sctp_bind_addr *) &asoc->base.bind_addr;
	reply = FUNC12(asoc, bp, GFP_ATOMIC, sizeof(bht));
	if (!reply)
		goto nomem;

	FUNC11(reply, sizeof(bht), &bht);

	/* Clear peer's init_tag cached in assoc as we are sending a new INIT */
	FUNC10(commands, SCTP_CMD_CLEAR_INIT_TAG, FUNC2());

	/* Stop pending T3-rtx and heartbeat timers */
	FUNC10(commands, SCTP_CMD_T3_RTX_TIMERS_STOP, FUNC2());
	FUNC10(commands, SCTP_CMD_HB_TIMERS_STOP, FUNC2());

	/* Delete non-primary peer ip addresses since we are transitioning
	 * back to the COOKIE-WAIT state
	 */
	FUNC10(commands, SCTP_CMD_DEL_NON_PRIMARY, FUNC2());

	/* If we've sent any data bundled with COOKIE-ECHO we will need to
	 * resend
	 */
	FUNC10(commands, SCTP_CMD_T1_RETRAN,
			FUNC6(asoc->peer.primary_path));

	/* Cast away the const modifier, as we want to just
	 * rerun it through as a sideffect.
	 */
	FUNC10(commands, SCTP_CMD_INIT_COUNTER_INC, FUNC2());

	FUNC10(commands, SCTP_CMD_TIMER_STOP,
			FUNC5(SCTP_EVENT_TIMEOUT_T1_COOKIE));
	FUNC10(commands, SCTP_CMD_NEW_STATE,
			FUNC4(SCTP_STATE_COOKIE_WAIT));
	FUNC10(commands, SCTP_CMD_TIMER_START,
			FUNC5(SCTP_EVENT_TIMEOUT_T1_INIT));

	FUNC10(commands, SCTP_CMD_REPLY, FUNC0(reply));

	return SCTP_DISPOSITION_CONSUME;

nomem:
	return SCTP_DISPOSITION_NOMEM;
}