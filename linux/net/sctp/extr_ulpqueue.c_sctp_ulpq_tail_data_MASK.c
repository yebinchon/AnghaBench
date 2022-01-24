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
struct sk_buff_head {int dummy; } ;
struct sctp_ulpq {int dummy; } ;
struct sctp_ulpevent {int msg_flags; int /*<<< orphan*/  ppid; int /*<<< orphan*/  ssn; } ;
struct TYPE_4__ {TYPE_1__* data_hdr; } ;
struct sctp_chunk {TYPE_2__ subh; int /*<<< orphan*/  asoc; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {int /*<<< orphan*/  ppid; int /*<<< orphan*/  ssn; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MSG_EOR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC3 (int /*<<< orphan*/ ,struct sctp_chunk*,int /*<<< orphan*/ ) ; 
 struct sctp_ulpevent* FUNC4 (struct sctp_ulpq*,struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC5 (struct sctp_ulpq*,struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_ulpq*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff_head*) ; 

int FUNC8(struct sctp_ulpq *ulpq, struct sctp_chunk *chunk,
			gfp_t gfp)
{
	struct sk_buff_head temp;
	struct sctp_ulpevent *event;
	int event_eor = 0;

	/* Create an event from the incoming chunk. */
	event = FUNC3(chunk->asoc, chunk, gfp);
	if (!event)
		return -ENOMEM;

	event->ssn = FUNC1(chunk->subh.data_hdr->ssn);
	event->ppid = chunk->subh.data_hdr->ppid;

	/* Do reassembly if needed.  */
	event = FUNC5(ulpq, event);

	/* Do ordering if needed.  */
	if (event) {
		/* Create a temporary list to collect chunks on.  */
		FUNC7(&temp);
		FUNC0(&temp, FUNC2(event));

		if (event->msg_flags & MSG_EOR)
			event = FUNC4(ulpq, event);
	}

	/* Send event to the ULP.  'event' is the sctp_ulpevent for
	 * very first SKB on the 'temp' list.
	 */
	if (event) {
		event_eor = (event->msg_flags & MSG_EOR) ? 1 : 0;
		FUNC6(ulpq, &temp);
	}

	return event_eor;
}