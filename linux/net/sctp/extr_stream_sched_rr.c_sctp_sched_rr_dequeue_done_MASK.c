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
struct sctp_stream_out_ext {int /*<<< orphan*/  outq; } ;
struct sctp_outq {TYPE_1__* asoc; } ;
struct sctp_chunk {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_4__ {struct sctp_stream_out_ext* ext; } ;
struct TYPE_3__ {int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sctp_stream_out_ext*) ; 

__attribute__((used)) static void FUNC5(struct sctp_outq *q,
				       struct sctp_chunk *ch)
{
	struct sctp_stream_out_ext *soute;
	__u16 sid;

	/* Last chunk on that msg, move to the next stream */
	sid = FUNC2(ch);
	soute = FUNC0(&q->asoc->stream, sid)->ext;

	FUNC3(&q->asoc->stream);

	if (FUNC1(&soute->outq))
		FUNC4(&q->asoc->stream, soute);
}