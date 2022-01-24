#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct p9_trans_rdma {scalar_t__ state; int /*<<< orphan*/  req_lock; TYPE_5__* cm_id; int /*<<< orphan*/  excess_rc; int /*<<< orphan*/  qp; int /*<<< orphan*/  sq_sem; TYPE_3__* pd; int /*<<< orphan*/  rq_sem; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  sdata; } ;
struct TYPE_12__ {int /*<<< orphan*/ * sdata; } ;
struct p9_req_t {int /*<<< orphan*/  status; TYPE_2__ tc; TYPE_6__ rc; } ;
struct TYPE_10__ {int /*<<< orphan*/  done; } ;
struct TYPE_7__ {int /*<<< orphan*/ * sdata; } ;
struct p9_rdma_context {TYPE_4__ cqe; struct p9_req_t* req; int /*<<< orphan*/  busa; TYPE_1__ rc; } ;
struct p9_client {struct p9_trans_rdma* trans; } ;
struct ib_sge {int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct ib_send_wr {int num_sge; struct ib_sge* sg_list; int /*<<< orphan*/  send_flags; int /*<<< orphan*/  opcode; TYPE_4__* wr_cqe; int /*<<< orphan*/ * next; } ;
struct TYPE_11__ {int /*<<< orphan*/  device; } ;
struct TYPE_9__ {int /*<<< orphan*/  local_dma_lkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINTR ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  IB_SEND_SIGNALED ; 
 int /*<<< orphan*/  IB_WR_SEND ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 scalar_t__ P9_RDMA_CLOSING ; 
 int /*<<< orphan*/  REQ_STATUS_ERROR ; 
 int /*<<< orphan*/  REQ_STATUS_SENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct ib_send_wr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_rdma_context*) ; 
 struct p9_rdma_context* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int FUNC11 (struct p9_client*,struct p9_rdma_context*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  send_done ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct p9_client *client, struct p9_req_t *req)
{
	struct p9_trans_rdma *rdma = client->trans;
	struct ib_send_wr wr;
	struct ib_sge sge;
	int err = 0;
	unsigned long flags;
	struct p9_rdma_context *c = NULL;
	struct p9_rdma_context *rpl_context = NULL;

	/* When an error occurs between posting the recv and the send,
	 * there will be a receive context posted without a pending request.
	 * Since there is no way to "un-post" it, we remember it and skip
	 * post_recv() for the next request.
	 * So here,
	 * see if we are this `next request' and need to absorb an excess rc.
	 * If yes, then drop and free our own, and do not recv_post().
	 **/
	if (FUNC15(FUNC1(&rdma->excess_rc) > 0)) {
		if ((FUNC2(1, &rdma->excess_rc) >= 0)) {
			/* Got one! */
			FUNC10(&req->rc);
			req->rc.sdata = NULL;
			goto dont_need_post_recv;
		} else {
			/* We raced and lost. */
			FUNC0(&rdma->excess_rc);
		}
	}

	/* Allocate an fcall for the reply */
	rpl_context = FUNC8(sizeof *rpl_context, GFP_NOFS);
	if (!rpl_context) {
		err = -ENOMEM;
		goto recv_error;
	}
	rpl_context->rc.sdata = req->rc.sdata;

	/*
	 * Post a receive buffer for this request. We need to ensure
	 * there is a reply buffer available for every outstanding
	 * request. A flushed request can result in no reply for an
	 * outstanding request, so we must keep a count to avoid
	 * overflowing the RQ.
	 */
	if (FUNC3(&rdma->rq_sem)) {
		err = -EINTR;
		goto recv_error;
	}

	err = FUNC11(client, rpl_context);
	if (err) {
		FUNC9(P9_DEBUG_ERROR, "POST RECV failed: %d\n", err);
		goto recv_error;
	}
	/* remove posted receive buffer from request structure */
	req->rc.sdata = NULL;

dont_need_post_recv:
	/* Post the request */
	c = FUNC8(sizeof *c, GFP_NOFS);
	if (!c) {
		err = -ENOMEM;
		goto send_error;
	}
	c->req = req;

	c->busa = FUNC4(rdma->cm_id->device,
				    c->req->tc.sdata, c->req->tc.size,
				    DMA_TO_DEVICE);
	if (FUNC5(rdma->cm_id->device, c->busa)) {
		err = -EIO;
		goto send_error;
	}

	c->cqe.done = send_done;

	sge.addr = c->busa;
	sge.length = c->req->tc.size;
	sge.lkey = rdma->pd->local_dma_lkey;

	wr.next = NULL;
	wr.wr_cqe = &c->cqe;
	wr.opcode = IB_WR_SEND;
	wr.send_flags = IB_SEND_SIGNALED;
	wr.sg_list = &sge;
	wr.num_sge = 1;

	if (FUNC3(&rdma->sq_sem)) {
		err = -EINTR;
		goto send_error;
	}

	/* Mark request as `sent' *before* we actually send it,
	 * because doing if after could erase the REQ_STATUS_RCVD
	 * status in case of a very fast reply.
	 */
	req->status = REQ_STATUS_SENT;
	err = FUNC6(rdma->qp, &wr, NULL);
	if (err)
		goto send_error;

	/* Success */
	return 0;

 /* Handle errors that happened during or while preparing the send: */
 send_error:
	req->status = REQ_STATUS_ERROR;
	FUNC7(c);
	FUNC9(P9_DEBUG_ERROR, "Error %d in rdma_request()\n", err);

	/* Ach.
	 *  We did recv_post(), but not send. We have one recv_post in excess.
	 */
	FUNC0(&rdma->excess_rc);
	return err;

 /* Handle errors that happened during or while preparing post_recv(): */
 recv_error:
	FUNC7(rpl_context);
	FUNC13(&rdma->req_lock, flags);
	if (err != -EINTR && rdma->state < P9_RDMA_CLOSING) {
		rdma->state = P9_RDMA_CLOSING;
		FUNC14(&rdma->req_lock, flags);
		FUNC12(rdma->cm_id);
	} else
		FUNC14(&rdma->req_lock, flags);
	return err;
}