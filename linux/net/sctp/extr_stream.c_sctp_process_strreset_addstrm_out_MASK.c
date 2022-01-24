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
union sctp_params {struct sctp_strreset_addstrm* v; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_transport {int /*<<< orphan*/  reconf_timer; } ;
struct sctp_strreset_addstrm {int /*<<< orphan*/  number_of_streams; int /*<<< orphan*/  request_seq; } ;
struct sctp_stream {size_t incnt; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {scalar_t__ strreset_inseq; scalar_t__* strreset_result; int strreset_enable; TYPE_1__* strreset_chunk; int /*<<< orphan*/  strreset_outstanding; int /*<<< orphan*/  strreset_outseq; struct sctp_stream stream; } ;
typedef  scalar_t__ __u32 ;
typedef  size_t __u16 ;
struct TYPE_2__ {struct sctp_transport* transport; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int SCTP_ENABLE_CHANGE_ASSOC_REQ ; 
 scalar_t__ SCTP_MAX_STREAM ; 
 int /*<<< orphan*/  SCTP_PARAM_RESET_ADD_IN_STREAMS ; 
 scalar_t__ SCTP_STRRESET_DENIED ; 
 scalar_t__ SCTP_STRRESET_ERR_BAD_SEQNO ; 
 scalar_t__ SCTP_STRRESET_ERR_IN_PROGRESS ; 
 scalar_t__ SCTP_STRRESET_PERFORMED ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_association*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct sctp_chunk* FUNC6 (struct sctp_association*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct sctp_stream*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_transport*) ; 
 struct sctp_ulpevent* FUNC9 (struct sctp_association*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_association*,scalar_t__) ; 

struct sctp_chunk *FUNC11(
				struct sctp_association *asoc,
				union sctp_params param,
				struct sctp_ulpevent **evp)
{
	struct sctp_strreset_addstrm *addstrm = param.v;
	struct sctp_stream *stream = &asoc->stream;
	__u32 result = SCTP_STRRESET_DENIED;
	__u32 request_seq, incnt;
	__u16 in, i;

	request_seq = FUNC2(addstrm->request_seq);
	if (FUNC0(asoc->strreset_inseq, request_seq) ||
	    FUNC0(request_seq, asoc->strreset_inseq - 2)) {
		result = SCTP_STRRESET_ERR_BAD_SEQNO;
		goto err;
	} else if (FUNC0(request_seq, asoc->strreset_inseq)) {
		i = asoc->strreset_inseq - request_seq - 1;
		result = asoc->strreset_result[i];
		goto err;
	}
	asoc->strreset_inseq++;

	if (!(asoc->strreset_enable & SCTP_ENABLE_CHANGE_ASSOC_REQ))
		goto out;

	in = FUNC3(addstrm->number_of_streams);
	incnt = stream->incnt + in;
	if (!in || incnt > SCTP_MAX_STREAM)
		goto out;

	if (FUNC7(stream, incnt, GFP_ATOMIC))
		goto out;

	if (asoc->strreset_chunk) {
		if (!FUNC4(
			asoc, 0, SCTP_PARAM_RESET_ADD_IN_STREAMS)) {
			/* same process with outstanding isn't 0 */
			result = SCTP_STRRESET_ERR_IN_PROGRESS;
			goto out;
		}

		asoc->strreset_outstanding--;
		asoc->strreset_outseq++;

		if (!asoc->strreset_outstanding) {
			struct sctp_transport *t;

			t = asoc->strreset_chunk->transport;
			if (FUNC1(&t->reconf_timer))
				FUNC8(t);

			FUNC5(asoc->strreset_chunk);
			asoc->strreset_chunk = NULL;
		}
	}

	stream->incnt = incnt;

	result = SCTP_STRRESET_PERFORMED;

	*evp = FUNC9(asoc,
		0, FUNC3(addstrm->number_of_streams), 0, GFP_ATOMIC);

out:
	FUNC10(asoc, result);
err:
	return FUNC6(asoc, result, request_seq);
}