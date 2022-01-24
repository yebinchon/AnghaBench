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
struct sctp_stream {int outcnt; int /*<<< orphan*/  in; int /*<<< orphan*/  out; } ;
struct sctp_sched_ops {int /*<<< orphan*/  (* free ) (struct sctp_stream*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  ext; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sctp_stream*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sctp_sched_ops* FUNC3 (struct sctp_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_stream*) ; 

void FUNC5(struct sctp_stream *stream)
{
	struct sctp_sched_ops *sched = FUNC3(stream);
	int i;

	sched->free(stream);
	for (i = 0; i < stream->outcnt; i++)
		FUNC2(FUNC0(stream, i)->ext);
	FUNC1(&stream->out);
	FUNC1(&stream->in);
}