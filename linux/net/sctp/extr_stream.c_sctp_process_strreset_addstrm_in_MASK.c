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
union sctp_params {struct sctp_strreset_addstrm* v; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_strreset_addstrm {int /*<<< orphan*/  number_of_streams; int /*<<< orphan*/  request_seq; } ;
struct sctp_stream {size_t outcnt; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {scalar_t__ strreset_inseq; scalar_t__* strreset_result; int strreset_enable; int strreset_outstanding; struct sctp_chunk* strreset_chunk; struct sctp_stream stream; } ;
typedef  scalar_t__ __u32 ;
typedef  size_t __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int SCTP_ENABLE_CHANGE_ASSOC_REQ ; 
 scalar_t__ SCTP_MAX_STREAM ; 
 scalar_t__ SCTP_STRRESET_DENIED ; 
 scalar_t__ SCTP_STRRESET_ERR_BAD_SEQNO ; 
 scalar_t__ SCTP_STRRESET_ERR_IN_PROGRESS ; 
 scalar_t__ SCTP_STRRESET_PERFORMED ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_chunk*) ; 
 struct sctp_chunk* FUNC4 (struct sctp_association*,size_t,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC5 (struct sctp_association*,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct sctp_stream*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_association*,scalar_t__) ; 

struct sctp_chunk *FUNC8(
				struct sctp_association *asoc,
				union sctp_params param,
				struct sctp_ulpevent **evp)
{
	struct sctp_strreset_addstrm *addstrm = param.v;
	struct sctp_stream *stream = &asoc->stream;
	__u32 result = SCTP_STRRESET_DENIED;
	struct sctp_chunk *chunk = NULL;
	__u32 request_seq, outcnt;
	__u16 out, i;
	int ret;

	request_seq = FUNC1(addstrm->request_seq);
	if (FUNC0(asoc->strreset_inseq, request_seq) ||
	    FUNC0(request_seq, asoc->strreset_inseq - 2)) {
		result = SCTP_STRRESET_ERR_BAD_SEQNO;
		goto err;
	} else if (FUNC0(request_seq, asoc->strreset_inseq)) {
		i = asoc->strreset_inseq - request_seq - 1;
		result = asoc->strreset_result[i];
		if (result == SCTP_STRRESET_PERFORMED)
			return NULL;
		goto err;
	}
	asoc->strreset_inseq++;

	if (!(asoc->strreset_enable & SCTP_ENABLE_CHANGE_ASSOC_REQ))
		goto out;

	if (asoc->strreset_outstanding) {
		result = SCTP_STRRESET_ERR_IN_PROGRESS;
		goto out;
	}

	out = FUNC2(addstrm->number_of_streams);
	outcnt = stream->outcnt + out;
	if (!out || outcnt > SCTP_MAX_STREAM)
		goto out;

	ret = FUNC6(stream, outcnt, GFP_ATOMIC);
	if (ret)
		goto out;

	chunk = FUNC4(asoc, out, 0);
	if (!chunk)
		goto out;

	asoc->strreset_chunk = chunk;
	asoc->strreset_outstanding = 1;
	FUNC3(asoc->strreset_chunk);

	stream->outcnt = outcnt;

	result = SCTP_STRRESET_PERFORMED;

out:
	FUNC7(asoc, result);
err:
	if (!chunk)
		chunk = FUNC5(asoc, result, request_seq);

	return chunk;
}