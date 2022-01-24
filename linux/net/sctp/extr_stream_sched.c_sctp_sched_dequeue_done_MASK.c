#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sctp_stream_out {int dummy; } ;
struct sctp_outq {TYPE_3__* sched; TYPE_2__* asoc; } ;
struct sctp_chunk {TYPE_4__* msg; int /*<<< orphan*/  frag_list; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_10__ {struct sctp_stream_out* out_curr; } ;
struct TYPE_9__ {int /*<<< orphan*/  chunks; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* dequeue_done ) (struct sctp_outq*,struct sctp_chunk*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  intl_capable; } ;
struct TYPE_7__ {TYPE_5__ stream; TYPE_1__ peer; } ;

/* Variables and functions */
 struct sctp_stream_out* FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_outq*,struct sctp_chunk*) ; 

void FUNC4(struct sctp_outq *q, struct sctp_chunk *ch)
{
	if (!FUNC1(&ch->frag_list, &ch->msg->chunks) &&
	    !q->asoc->peer.intl_capable) {
		struct sctp_stream_out *sout;
		__u16 sid;

		/* datamsg is not finish, so save it as current one,
		 * in case application switch scheduler or a higher
		 * priority stream comes in.
		 */
		sid = FUNC2(ch);
		sout = FUNC0(&q->asoc->stream, sid);
		q->asoc->stream.out_curr = sout;
		return;
	}

	q->asoc->stream.out_curr = NULL;
	q->sched->dequeue_done(q, ch);
}