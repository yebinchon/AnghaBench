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
struct sctp_stream {scalar_t__ outcnt; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  reconf_capable; } ;
struct sctp_association {int strreset_enable; int strreset_outstanding; struct sctp_chunk* strreset_chunk; int /*<<< orphan*/  outqueue; TYPE_1__ peer; struct sctp_stream stream; } ;
typedef  scalar_t__ __u16 ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int ENOPROTOOPT ; 
 int SCTP_ENABLE_RESET_ASSOC_REQ ; 
 TYPE_2__* FUNC0 (struct sctp_stream*,scalar_t__) ; 
 int /*<<< orphan*/  SCTP_STREAM_CLOSED ; 
 int /*<<< orphan*/  SCTP_STREAM_OPEN ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_chunk*) ; 
 struct sctp_chunk* FUNC3 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sctp_association*,struct sctp_chunk*) ; 

int FUNC6(struct sctp_association *asoc)
{
	struct sctp_stream *stream = &asoc->stream;
	struct sctp_chunk *chunk = NULL;
	int retval;
	__u16 i;

	if (!asoc->peer.reconf_capable ||
	    !(asoc->strreset_enable & SCTP_ENABLE_RESET_ASSOC_REQ))
		return -ENOPROTOOPT;

	if (asoc->strreset_outstanding)
		return -EINPROGRESS;

	if (!FUNC4(&asoc->outqueue))
		return -EAGAIN;

	chunk = FUNC3(asoc);
	if (!chunk)
		return -ENOMEM;

	/* Block further xmit of data until this request is completed */
	for (i = 0; i < stream->outcnt; i++)
		FUNC0(stream, i)->state = SCTP_STREAM_CLOSED;

	asoc->strreset_chunk = chunk;
	FUNC1(asoc->strreset_chunk);

	retval = FUNC5(asoc, chunk);
	if (retval) {
		FUNC2(asoc->strreset_chunk);
		asoc->strreset_chunk = NULL;

		for (i = 0; i < stream->outcnt; i++)
			FUNC0(stream, i)->state = SCTP_STREAM_OPEN;

		return retval;
	}

	asoc->strreset_outstanding = 1;

	return 0;
}