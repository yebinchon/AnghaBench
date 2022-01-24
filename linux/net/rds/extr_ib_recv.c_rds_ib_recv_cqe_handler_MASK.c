#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rds_ib_recv_work {TYPE_3__* r_frag; } ;
struct rds_ib_connection {int /*<<< orphan*/  i_recv_ring; TYPE_2__* i_cm_id; struct rds_ib_recv_work* i_recvs; struct rds_connection* conn; } ;
struct rds_ib_ack_state {int dummy; } ;
struct rds_connection {int /*<<< orphan*/  c_tos; int /*<<< orphan*/  c_faddr; int /*<<< orphan*/  c_laddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  imm_data; } ;
struct ib_wc {int /*<<< orphan*/  status; int /*<<< orphan*/  byte_len; TYPE_1__ ex; scalar_t__ wr_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  f_sg; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rds_connection*) ; 
 scalar_t__ FUNC4 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct rds_connection*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_ib_connection*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct rds_connection*,struct rds_ib_recv_work*,int /*<<< orphan*/ ,struct rds_ib_ack_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct rds_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 size_t FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_ib_rx_cq_event ; 
 int /*<<< orphan*/  s_ib_rx_refill_from_cq ; 
 int /*<<< orphan*/  s_ib_rx_ring_empty ; 

void FUNC15(struct rds_ib_connection *ic,
			     struct ib_wc *wc,
			     struct rds_ib_ack_state *state)
{
	struct rds_connection *conn = ic->conn;
	struct rds_ib_recv_work *recv;

	FUNC14("wc wr_id 0x%llx status %u (%s) byte_len %u imm_data %u\n",
		 (unsigned long long)wc->wr_id, wc->status,
		 FUNC2(wc->status), wc->byte_len,
		 FUNC0(wc->ex.imm_data));

	FUNC13(s_ib_rx_cq_event);
	recv = &ic->i_recvs[FUNC12(&ic->i_recv_ring)];
	FUNC1(ic->i_cm_id->device, &recv->r_frag->f_sg, 1,
			DMA_FROM_DEVICE);

	/* Also process recvs in connecting state because it is possible
	 * to get a recv completion _before_ the rdmacm ESTABLISHED
	 * event is processed.
	 */
	if (wc->status == IB_WC_SUCCESS) {
		FUNC7(conn, recv, wc->byte_len, state);
	} else {
		/* We expect errors as the qp is drained during shutdown */
		if (FUNC4(conn) || FUNC3(conn))
			FUNC5(conn, "recv completion on <%pI6c,%pI6c, %d> had status %u (%s), disconnecting and reconnecting\n",
					  &conn->c_laddr, &conn->c_faddr,
					  conn->c_tos, wc->status,
					  FUNC2(wc->status));
	}

	/* rds_ib_process_recv() doesn't always consume the frag, and
	 * we might not have called it at all if the wc didn't indicate
	 * success. We already unmapped the frag's pages, though, and
	 * the following rds_ib_ring_free() call tells the refill path
	 * that it will not find an allocated frag here. Make sure we
	 * keep that promise by freeing a frag that's still on the ring.
	 */
	if (recv->r_frag) {
		FUNC6(ic, recv->r_frag);
		recv->r_frag = NULL;
	}
	FUNC10(&ic->i_recv_ring, 1);

	/* If we ever end up with a really empty receive ring, we're
	 * in deep trouble, as the sender will definitely see RNR
	 * timeouts. */
	if (FUNC9(&ic->i_recv_ring))
		FUNC13(s_ib_rx_ring_empty);

	if (FUNC11(&ic->i_recv_ring)) {
		FUNC8(conn, 0, GFP_NOWAIT);
		FUNC13(s_ib_rx_refill_from_cq);
	}
}