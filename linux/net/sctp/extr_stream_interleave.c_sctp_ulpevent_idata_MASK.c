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
struct sctp_ulpevent {int msg_flags; void* fsn; int /*<<< orphan*/  ppid; void* mid; } ;
struct TYPE_4__ {TYPE_1__* idata_hdr; } ;
struct sctp_chunk {TYPE_2__ subh; int /*<<< orphan*/  asoc; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {int /*<<< orphan*/  fsn; int /*<<< orphan*/  ppid; int /*<<< orphan*/  mid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MSG_EOR ; 
 int SCTP_DATA_FIRST_FRAG ; 
 int SCTP_DATA_UNORDERED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_ulpq*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC4 (struct sctp_ulpq*,struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC5 (struct sctp_ulpq*,struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC6 (struct sctp_ulpq*,struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC7 (int /*<<< orphan*/ ,struct sctp_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff_head*) ; 

__attribute__((used)) static int FUNC9(struct sctp_ulpq *ulpq,
			       struct sctp_chunk *chunk, gfp_t gfp)
{
	struct sctp_ulpevent *event;
	struct sk_buff_head temp;
	int event_eor = 0;

	event = FUNC7(chunk->asoc, chunk, gfp);
	if (!event)
		return -ENOMEM;

	event->mid = FUNC1(chunk->subh.idata_hdr->mid);
	if (event->msg_flags & SCTP_DATA_FIRST_FRAG)
		event->ppid = chunk->subh.idata_hdr->ppid;
	else
		event->fsn = FUNC1(chunk->subh.idata_hdr->fsn);

	if (!(event->msg_flags & SCTP_DATA_UNORDERED)) {
		event = FUNC5(ulpq, event);
		if (event) {
			FUNC8(&temp);
			FUNC0(&temp, FUNC3(event));

			if (event->msg_flags & MSG_EOR)
				event = FUNC4(ulpq, event);
		}
	} else {
		event = FUNC6(ulpq, event);
		if (event) {
			FUNC8(&temp);
			FUNC0(&temp, FUNC3(event));
		}
	}

	if (event) {
		event_eor = (event->msg_flags & MSG_EOR) ? 1 : 0;
		FUNC2(ulpq, &temp);
	}

	return event_eor;
}