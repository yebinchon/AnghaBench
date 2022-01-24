#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rds_ib_send_work {int dummy; } ;
struct rds_ib_recv_work {int dummy; } ;
struct rds_ib_device {int max_wrs; int /*<<< orphan*/  max_sge; int /*<<< orphan*/  pd; scalar_t__ use_fastreg; } ;
struct TYPE_6__ {int w_nr; } ;
struct rds_ib_connection {int /*<<< orphan*/ * i_send_cq; int /*<<< orphan*/ * i_recv_cq; TYPE_3__* i_cm_id; int /*<<< orphan*/  i_send_hdrs_dma; void* i_send_hdrs; TYPE_2__ i_send_ring; int /*<<< orphan*/  i_recv_hdrs_dma; void* i_recv_hdrs; TYPE_2__ i_recv_ring; int /*<<< orphan*/  i_ack_dma; void* i_ack; void* i_sends; int /*<<< orphan*/  i_pd; void* i_recvs; void* i_rcq_vector; void* i_scq_vector; } ;
struct rds_header {int dummy; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;
struct TYPE_5__ {int max_send_wr; int max_recv_wr; int /*<<< orphan*/  max_recv_sge; int /*<<< orphan*/  max_send_sge; } ;
struct ib_qp_init_attr {int /*<<< orphan*/ * recv_cq; int /*<<< orphan*/ * send_cq; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  sq_sig_type; TYPE_1__ cap; struct rds_connection* qp_context; int /*<<< orphan*/  event_handler; } ;
struct ib_device {int dummy; } ;
struct ib_cq_init_attr {int cqe; void* comp_vector; } ;
typedef  int /*<<< orphan*/  attr ;
struct TYPE_7__ {struct ib_device* device; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  IB_CQ_SOLICITED ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 int /*<<< orphan*/  IB_SIGNAL_REQ_WR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int RDS_IB_DEFAULT_FR_WR ; 
 int /*<<< orphan*/  RDS_IB_RECV_SGE ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 void* FUNC3 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rds_connection*,struct ib_cq_init_attr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct ib_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*,int,void*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct rds_ib_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct rds_ib_device*,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_qp_init_attr*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,struct ib_qp_init_attr*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (struct rds_ib_device*,struct rds_connection*) ; 
 int /*<<< orphan*/  rds_ib_cq_comp_handler_recv ; 
 int /*<<< orphan*/  rds_ib_cq_comp_handler_send ; 
 int /*<<< orphan*/  rds_ib_cq_event_handler ; 
 int /*<<< orphan*/  FUNC15 (struct rds_ib_device*) ; 
 struct rds_ib_device* FUNC16 (struct ib_device*) ; 
 int /*<<< orphan*/  rds_ib_qp_event_handler ; 
 int /*<<< orphan*/  FUNC17 (struct rds_ib_connection*) ; 
 int /*<<< orphan*/  FUNC18 (struct rds_ib_device*,struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (void*) ; 
 void* FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC23(struct rds_connection *conn)
{
	struct rds_ib_connection *ic = conn->c_transport_data;
	struct ib_device *dev = ic->i_cm_id->device;
	struct ib_qp_init_attr attr;
	struct ib_cq_init_attr cq_attr = {};
	struct rds_ib_device *rds_ibdev;
	int ret, fr_queue_space;

	/*
	 * It's normal to see a null device if an incoming connection races
	 * with device removal, so we don't print a warning.
	 */
	rds_ibdev = FUNC16(dev);
	if (!rds_ibdev)
		return -EOPNOTSUPP;

	/* The fr_queue_space is currently set to 512, to add extra space on
	 * completion queue and send queue. This extra space is used for FRMR
	 * registration and invalidation work requests
	 */
	fr_queue_space = (rds_ibdev->use_fastreg ? RDS_IB_DEFAULT_FR_WR : 0);

	/* add the conn now so that connection establishment has the dev */
	FUNC14(rds_ibdev, conn);

	if (rds_ibdev->max_wrs < ic->i_send_ring.w_nr + 1)
		FUNC19(&ic->i_send_ring, rds_ibdev->max_wrs - 1);
	if (rds_ibdev->max_wrs < ic->i_recv_ring.w_nr + 1)
		FUNC19(&ic->i_recv_ring, rds_ibdev->max_wrs - 1);

	/* Protection domain and memory range */
	ic->i_pd = rds_ibdev->pd;

	ic->i_scq_vector = FUNC8(rds_ibdev);
	cq_attr.cqe = ic->i_send_ring.w_nr + fr_queue_space + 1;
	cq_attr.comp_vector = ic->i_scq_vector;
	ic->i_send_cq = FUNC3(dev, rds_ib_cq_comp_handler_send,
				     rds_ib_cq_event_handler, conn,
				     &cq_attr);
	if (FUNC0(ic->i_send_cq)) {
		ret = FUNC1(ic->i_send_cq);
		ic->i_send_cq = NULL;
		FUNC9(rds_ibdev, ic->i_scq_vector);
		FUNC20("ib_create_cq send failed: %d\n", ret);
		goto rds_ibdev_out;
	}

	ic->i_rcq_vector = FUNC8(rds_ibdev);
	cq_attr.cqe = ic->i_recv_ring.w_nr;
	cq_attr.comp_vector = ic->i_rcq_vector;
	ic->i_recv_cq = FUNC3(dev, rds_ib_cq_comp_handler_recv,
				     rds_ib_cq_event_handler, conn,
				     &cq_attr);
	if (FUNC0(ic->i_recv_cq)) {
		ret = FUNC1(ic->i_recv_cq);
		ic->i_recv_cq = NULL;
		FUNC9(rds_ibdev, ic->i_rcq_vector);
		FUNC20("ib_create_cq recv failed: %d\n", ret);
		goto send_cq_out;
	}

	ret = FUNC7(ic->i_send_cq, IB_CQ_NEXT_COMP);
	if (ret) {
		FUNC20("ib_req_notify_cq send failed: %d\n", ret);
		goto recv_cq_out;
	}

	ret = FUNC7(ic->i_recv_cq, IB_CQ_SOLICITED);
	if (ret) {
		FUNC20("ib_req_notify_cq recv failed: %d\n", ret);
		goto recv_cq_out;
	}

	/* XXX negotiate max send/recv with remote? */
	FUNC11(&attr, 0, sizeof(attr));
	attr.event_handler = rds_ib_qp_event_handler;
	attr.qp_context = conn;
	/* + 1 to allow for the single ack message */
	attr.cap.max_send_wr = ic->i_send_ring.w_nr + fr_queue_space + 1;
	attr.cap.max_recv_wr = ic->i_recv_ring.w_nr + 1;
	attr.cap.max_send_sge = rds_ibdev->max_sge;
	attr.cap.max_recv_sge = RDS_IB_RECV_SGE;
	attr.sq_sig_type = IB_SIGNAL_REQ_WR;
	attr.qp_type = IB_QPT_RC;
	attr.send_cq = ic->i_send_cq;
	attr.recv_cq = ic->i_recv_cq;

	/*
	 * XXX this can fail if max_*_wr is too large?  Are we supposed
	 * to back off until we get a value that the hardware can support?
	 */
	ret = FUNC12(ic->i_cm_id, ic->i_pd, &attr);
	if (ret) {
		FUNC20("rdma_create_qp failed: %d\n", ret);
		goto recv_cq_out;
	}

	ic->i_send_hdrs = FUNC5(dev,
					   ic->i_send_ring.w_nr *
						sizeof(struct rds_header),
					   &ic->i_send_hdrs_dma, GFP_KERNEL);
	if (!ic->i_send_hdrs) {
		ret = -ENOMEM;
		FUNC20("ib_dma_alloc_coherent send failed\n");
		goto qp_out;
	}

	ic->i_recv_hdrs = FUNC5(dev,
					   ic->i_recv_ring.w_nr *
						sizeof(struct rds_header),
					   &ic->i_recv_hdrs_dma, GFP_KERNEL);
	if (!ic->i_recv_hdrs) {
		ret = -ENOMEM;
		FUNC20("ib_dma_alloc_coherent recv failed\n");
		goto send_hdrs_dma_out;
	}

	ic->i_ack = FUNC5(dev, sizeof(struct rds_header),
				       &ic->i_ack_dma, GFP_KERNEL);
	if (!ic->i_ack) {
		ret = -ENOMEM;
		FUNC20("ib_dma_alloc_coherent ack failed\n");
		goto recv_hdrs_dma_out;
	}

	ic->i_sends = FUNC22(FUNC2(sizeof(struct rds_ib_send_work),
					      ic->i_send_ring.w_nr),
				   FUNC10(dev));
	if (!ic->i_sends) {
		ret = -ENOMEM;
		FUNC20("send allocation failed\n");
		goto ack_dma_out;
	}

	ic->i_recvs = FUNC22(FUNC2(sizeof(struct rds_ib_recv_work),
					      ic->i_recv_ring.w_nr),
				   FUNC10(dev));
	if (!ic->i_recvs) {
		ret = -ENOMEM;
		FUNC20("recv allocation failed\n");
		goto sends_out;
	}

	FUNC17(ic);

	FUNC20("conn %p pd %p cq %p %p\n", conn, ic->i_pd,
		 ic->i_send_cq, ic->i_recv_cq);

	goto out;

sends_out:
	FUNC21(ic->i_sends);
ack_dma_out:
	FUNC6(dev, sizeof(struct rds_header),
			     ic->i_ack, ic->i_ack_dma);
recv_hdrs_dma_out:
	FUNC6(dev, ic->i_recv_ring.w_nr *
					sizeof(struct rds_header),
					ic->i_recv_hdrs, ic->i_recv_hdrs_dma);
send_hdrs_dma_out:
	FUNC6(dev, ic->i_send_ring.w_nr *
					sizeof(struct rds_header),
					ic->i_send_hdrs, ic->i_send_hdrs_dma);
qp_out:
	FUNC13(ic->i_cm_id);
recv_cq_out:
	FUNC4(ic->i_recv_cq);
	ic->i_recv_cq = NULL;
send_cq_out:
	FUNC4(ic->i_send_cq);
	ic->i_send_cq = NULL;
rds_ibdev_out:
	FUNC18(rds_ibdev, conn);
out:
	FUNC15(rds_ibdev);

	return ret;
}