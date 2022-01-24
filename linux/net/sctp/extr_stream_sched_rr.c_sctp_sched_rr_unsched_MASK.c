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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_stream*) ; 

__attribute__((used)) static void FUNC3(struct sctp_stream *stream,
				  struct sctp_stream_out_ext *soute)
{
	if (stream->rr_next == soute)
		/* Try to move to the next stream */
		FUNC2(stream);

	FUNC0(&soute->rr_list);

	/* If we have no other stream queued, clear next */
	if (FUNC1(&stream->rr_list))
		stream->rr_next = NULL;
}