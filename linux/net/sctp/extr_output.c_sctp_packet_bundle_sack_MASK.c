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
struct timer_list {int dummy; } ;
struct sctp_packet {TYPE_1__* transport; int /*<<< orphan*/  has_cookie_echo; int /*<<< orphan*/  has_sack; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_8__ {scalar_t__ sack_generation; scalar_t__ sack_needed; } ;
struct TYPE_7__ {int /*<<< orphan*/  octrlchunks; } ;
struct TYPE_6__ {int /*<<< orphan*/  sk; } ;
struct sctp_association {TYPE_4__ peer; TYPE_3__ stats; TYPE_2__ base; int /*<<< orphan*/  rwnd; int /*<<< orphan*/  a_rwnd; struct timer_list* timers; } ;
typedef  enum sctp_xmit { ____Placeholder_sctp_xmit } sctp_xmit ;
struct TYPE_5__ {scalar_t__ sack_generation; struct sctp_association* asoc; } ;

/* Variables and functions */
 size_t SCTP_EVENT_TIMEOUT_SACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_OUTCTRLCHUNKS ; 
 int SCTP_XMIT_OK ; 
 int FUNC1 (struct sctp_packet*,struct sctp_chunk*) ; 
 scalar_t__ FUNC2 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_chunk*) ; 
 scalar_t__ FUNC5 (struct sctp_chunk*) ; 
 struct sctp_chunk* FUNC6 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct timer_list*) ; 

__attribute__((used)) static enum sctp_xmit FUNC9(struct sctp_packet *pkt,
					      struct sctp_chunk *chunk)
{
	enum sctp_xmit retval = SCTP_XMIT_OK;

	/* If sending DATA and haven't aleady bundled a SACK, try to
	 * bundle one in to the packet.
	 */
	if (FUNC5(chunk) && !pkt->has_sack &&
	    !pkt->has_cookie_echo) {
		struct sctp_association *asoc;
		struct timer_list *timer;
		asoc = pkt->transport->asoc;
		timer = &asoc->timers[SCTP_EVENT_TIMEOUT_SACK];

		/* If the SACK timer is running, we have a pending SACK */
		if (FUNC8(timer)) {
			struct sctp_chunk *sack;

			if (pkt->transport->sack_generation !=
			    pkt->transport->asoc->peer.sack_generation)
				return retval;

			asoc->a_rwnd = asoc->rwnd;
			sack = FUNC6(asoc);
			if (sack) {
				retval = FUNC1(pkt, sack);
				if (retval != SCTP_XMIT_OK) {
					FUNC4(sack);
					goto out;
				}
				FUNC0(FUNC7(asoc->base.sk),
					       SCTP_MIB_OUTCTRLCHUNKS);
				asoc->stats.octrlchunks++;
				asoc->peer.sack_needed = 0;
				if (FUNC2(timer))
					FUNC3(asoc);
			}
		}
	}
out:
	return retval;
}