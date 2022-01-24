#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
union sctp_params {TYPE_3__* p; struct sctp_strreset_resp* v; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_transport {int /*<<< orphan*/  reconf_timer; } ;
struct sctp_strreset_resptsn {int /*<<< orphan*/  receivers_next_tsn; int /*<<< orphan*/  senders_next_tsn; } ;
struct sctp_strreset_resp {int /*<<< orphan*/  result; int /*<<< orphan*/  response_seq; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; } ;
struct sctp_strreset_outreq {TYPE_1__ param_hdr; int /*<<< orphan*/ * list_of_streams; } ;
struct TYPE_10__ {int /*<<< orphan*/  length; } ;
struct sctp_strreset_inreq {TYPE_2__ param_hdr; int /*<<< orphan*/ * list_of_streams; } ;
struct sctp_strreset_addstrm {int /*<<< orphan*/  number_of_streams; } ;
struct sctp_stream_out {void* state; scalar_t__ mid_uo; scalar_t__ mid; } ;
struct sctp_stream {int outcnt; int incnt; TYPE_4__* si; } ;
struct sctp_paramhdr {scalar_t__ type; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  out_chunk_list; } ;
struct TYPE_13__ {int /*<<< orphan*/  tsn_map; } ;
struct sctp_association {TYPE_7__* strreset_chunk; int /*<<< orphan*/  strreset_outstanding; int /*<<< orphan*/  strreset_outseq; scalar_t__ ctsn_ack_point; scalar_t__ adv_peer_ack_point; scalar_t__ next_tsn; TYPE_6__ outqueue; TYPE_5__ peer; int /*<<< orphan*/  ulpq; struct sctp_stream stream; } ;
typedef  scalar_t__ __u32 ;
typedef  int __u16 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_16__ {scalar_t__ mid; } ;
struct TYPE_15__ {struct sctp_transport* transport; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* report_ftsn ) (int /*<<< orphan*/ *,scalar_t__) ;} ;
struct TYPE_11__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_PARAM_RESET_ADD_IN_STREAMS ; 
 scalar_t__ SCTP_PARAM_RESET_ADD_OUT_STREAMS ; 
 scalar_t__ SCTP_PARAM_RESET_IN_REQUEST ; 
 scalar_t__ SCTP_PARAM_RESET_OUT_REQUEST ; 
 scalar_t__ SCTP_PARAM_RESET_TSN_REQUEST ; 
 TYPE_8__* FUNC1 (struct sctp_stream*,int) ; 
 struct sctp_stream_out* FUNC2 (struct sctp_stream*,int) ; 
 void* SCTP_STREAM_OPEN ; 
 int SCTP_STREAM_RESET_DENIED ; 
 int SCTP_STREAM_RESET_FAILED ; 
 int SCTP_STREAM_RESET_INCOMING_SSN ; 
 int SCTP_STREAM_RESET_OUTGOING_SSN ; 
 scalar_t__ SCTP_STRRESET_DENIED ; 
 scalar_t__ SCTP_STRRESET_IN_PROGRESS ; 
 scalar_t__ SCTP_STRRESET_PERFORMED ; 
 int /*<<< orphan*/  SCTP_TSN_MAP_INITIAL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct sctp_paramhdr* FUNC7 (struct sctp_association*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_transport*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct sctp_ulpevent* FUNC13 (struct sctp_association*,int,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct sctp_ulpevent* FUNC14 (struct sctp_association*,int,int,int,int /*<<< orphan*/ ) ; 
 struct sctp_ulpevent* FUNC15 (struct sctp_association*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  temp ; 

struct sctp_chunk *FUNC17(
				struct sctp_association *asoc,
				union sctp_params param,
				struct sctp_ulpevent **evp)
{
	struct sctp_stream *stream = &asoc->stream;
	struct sctp_strreset_resp *resp = param.v;
	struct sctp_transport *t;
	__u16 i, nums, flags = 0;
	struct sctp_paramhdr *req;
	__u32 result;

	req = FUNC7(asoc, resp->response_seq, 0);
	if (!req)
		return NULL;

	result = FUNC5(resp->result);
	if (result != SCTP_STRRESET_PERFORMED) {
		/* if in progress, do nothing but retransmit */
		if (result == SCTP_STRRESET_IN_PROGRESS)
			return NULL;
		else if (result == SCTP_STRRESET_DENIED)
			flags = SCTP_STREAM_RESET_DENIED;
		else
			flags = SCTP_STREAM_RESET_FAILED;
	}

	if (req->type == SCTP_PARAM_RESET_OUT_REQUEST) {
		struct sctp_strreset_outreq *outreq;
		__be16 *str_p;

		outreq = (struct sctp_strreset_outreq *)req;
		str_p = outreq->list_of_streams;
		nums = (FUNC6(outreq->param_hdr.length) - sizeof(*outreq)) /
		       sizeof(__u16);

		if (result == SCTP_STRRESET_PERFORMED) {
			struct sctp_stream_out *sout;
			if (nums) {
				for (i = 0; i < nums; i++) {
					sout = FUNC2(stream, FUNC6(str_p[i]));
					sout->mid = 0;
					sout->mid_uo = 0;
				}
			} else {
				for (i = 0; i < stream->outcnt; i++) {
					sout = FUNC2(stream, i);
					sout->mid = 0;
					sout->mid_uo = 0;
				}
			}
		}

		flags |= SCTP_STREAM_RESET_OUTGOING_SSN;

		for (i = 0; i < stream->outcnt; i++)
			FUNC2(stream, i)->state = SCTP_STREAM_OPEN;

		*evp = FUNC15(asoc, flags,
			nums, str_p, GFP_ATOMIC);
	} else if (req->type == SCTP_PARAM_RESET_IN_REQUEST) {
		struct sctp_strreset_inreq *inreq;
		__be16 *str_p;

		/* if the result is performed, it's impossible for inreq */
		if (result == SCTP_STRRESET_PERFORMED)
			return NULL;

		inreq = (struct sctp_strreset_inreq *)req;
		str_p = inreq->list_of_streams;
		nums = (FUNC6(inreq->param_hdr.length) - sizeof(*inreq)) /
		       sizeof(__u16);

		flags |= SCTP_STREAM_RESET_INCOMING_SSN;

		*evp = FUNC15(asoc, flags,
			nums, str_p, GFP_ATOMIC);
	} else if (req->type == SCTP_PARAM_RESET_TSN_REQUEST) {
		struct sctp_strreset_resptsn *resptsn;
		__u32 stsn, rtsn;

		/* check for resptsn, as sctp_verify_reconf didn't do it*/
		if (FUNC6(param.p->length) != sizeof(*resptsn))
			return NULL;

		resptsn = (struct sctp_strreset_resptsn *)resp;
		stsn = FUNC5(resptsn->senders_next_tsn);
		rtsn = FUNC5(resptsn->receivers_next_tsn);

		if (result == SCTP_STRRESET_PERFORMED) {
			__u32 mtsn = FUNC11(
						&asoc->peer.tsn_map);
			FUNC0(temp);

			asoc->stream.si->report_ftsn(&asoc->ulpq, mtsn);

			FUNC12(&asoc->peer.tsn_map,
					 SCTP_TSN_MAP_INITIAL,
					 stsn, GFP_ATOMIC);

			/* Clean up sacked and abandoned queues only. As the
			 * out_chunk_list may not be empty, splice it to temp,
			 * then get it back after sctp_outq_free is done.
			 */
			FUNC4(&asoc->outqueue.out_chunk_list, &temp);
			FUNC9(&asoc->outqueue);
			FUNC4(&temp, &asoc->outqueue.out_chunk_list);

			asoc->next_tsn = rtsn;
			asoc->ctsn_ack_point = asoc->next_tsn - 1;
			asoc->adv_peer_ack_point = asoc->ctsn_ack_point;

			for (i = 0; i < stream->outcnt; i++) {
				FUNC2(stream, i)->mid = 0;
				FUNC2(stream, i)->mid_uo = 0;
			}
			for (i = 0; i < stream->incnt; i++)
				FUNC1(stream, i)->mid = 0;
		}

		for (i = 0; i < stream->outcnt; i++)
			FUNC2(stream, i)->state = SCTP_STREAM_OPEN;

		*evp = FUNC13(asoc, flags,
			stsn, rtsn, GFP_ATOMIC);
	} else if (req->type == SCTP_PARAM_RESET_ADD_OUT_STREAMS) {
		struct sctp_strreset_addstrm *addstrm;
		__u16 number;

		addstrm = (struct sctp_strreset_addstrm *)req;
		nums = FUNC6(addstrm->number_of_streams);
		number = stream->outcnt - nums;

		if (result == SCTP_STRRESET_PERFORMED)
			for (i = number; i < stream->outcnt; i++)
				FUNC2(stream, i)->state = SCTP_STREAM_OPEN;
		else
			stream->outcnt = number;

		*evp = FUNC14(asoc, flags,
			0, nums, GFP_ATOMIC);
	} else if (req->type == SCTP_PARAM_RESET_ADD_IN_STREAMS) {
		struct sctp_strreset_addstrm *addstrm;

		/* if the result is performed, it's impossible for addstrm in
		 * request.
		 */
		if (result == SCTP_STRRESET_PERFORMED)
			return NULL;

		addstrm = (struct sctp_strreset_addstrm *)req;
		nums = FUNC6(addstrm->number_of_streams);

		*evp = FUNC14(asoc, flags,
			nums, 0, GFP_ATOMIC);
	}

	asoc->strreset_outstanding--;
	asoc->strreset_outseq++;

	/* remove everything for this reconf request */
	if (!asoc->strreset_outstanding) {
		t = asoc->strreset_chunk->transport;
		if (FUNC3(&t->reconf_timer))
			FUNC10(t);

		FUNC8(asoc->strreset_chunk);
		asoc->strreset_chunk = NULL;
	}

	return NULL;
}