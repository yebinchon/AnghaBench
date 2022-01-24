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
struct sctp_stream {int outcnt; int /*<<< orphan*/  out; } ;
struct sctp_sched_ops {int /*<<< orphan*/  (* free ) (struct sctp_stream*) ;int /*<<< orphan*/  (* sched_all ) (struct sctp_stream*) ;int /*<<< orphan*/  (* unsched_all ) (struct sctp_stream*) ;} ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sctp_stream*,int) ; 
 int /*<<< orphan*/  SCTP_STREAM_OPEN ; 
 int /*<<< orphan*/  __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sctp_sched_ops* FUNC2 (struct sctp_stream*) ; 
 int FUNC3 (struct sctp_stream*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sctp_stream*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_stream*) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_stream*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_stream*) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_stream*) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_stream*) ; 

int FUNC10(struct sctp_stream *stream, __u16 outcnt, __u16 incnt,
		     gfp_t gfp)
{
	struct sctp_sched_ops *sched = FUNC2(stream);
	int i, ret = 0;

	gfp |= __GFP_NOWARN;

	/* Initial stream->out size may be very big, so free it and alloc
	 * a new one with new outcnt to save memory if needed.
	 */
	if (outcnt == stream->outcnt)
		goto in;

	/* Filter out chunks queued on streams that won't exist anymore */
	sched->unsched_all(stream);
	FUNC6(stream, NULL, outcnt);
	sched->sched_all(stream);

	ret = FUNC4(stream, outcnt, gfp);
	if (ret)
		goto out;

	for (i = 0; i < stream->outcnt; i++)
		FUNC0(stream, i)->state = SCTP_STREAM_OPEN;

in:
	FUNC5(stream);
	if (!incnt)
		goto out;

	ret = FUNC3(stream, incnt, gfp);
	if (ret) {
		sched->free(stream);
		FUNC1(&stream->out);
		stream->outcnt = 0;
		goto out;
	}

out:
	return ret;
}