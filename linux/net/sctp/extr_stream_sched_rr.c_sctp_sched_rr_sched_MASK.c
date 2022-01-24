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
struct sctp_stream_out_ext {int /*<<< orphan*/  rr_list; } ;
struct sctp_stream {struct sctp_stream_out_ext* rr_next; int /*<<< orphan*/  rr_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct sctp_stream *stream,
				struct sctp_stream_out_ext *soute)
{
	if (!FUNC1(&soute->rr_list))
		/* Already scheduled. */
		return;

	/* Schedule the stream */
	FUNC0(&soute->rr_list, &stream->rr_list);

	if (!stream->rr_next)
		stream->rr_next = soute;
}