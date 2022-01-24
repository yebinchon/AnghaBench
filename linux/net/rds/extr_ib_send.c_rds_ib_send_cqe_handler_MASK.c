#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct rds_message {scalar_t__ m_final_op; } ;
struct TYPE_7__ {int send_flags; } ;
struct rds_ib_send_work {scalar_t__ s_op; scalar_t__ s_queued; TYPE_2__ s_wr; } ;
struct TYPE_8__ {scalar_t__ w_nr; } ;
struct rds_ib_connection {TYPE_3__ i_send_ring; struct rds_ib_send_work* i_sends; scalar_t__ i_ack_queued; struct rds_connection* conn; } ;
struct rds_connection {int /*<<< orphan*/  c_tos; int /*<<< orphan*/  c_faddr; int /*<<< orphan*/  c_laddr; int /*<<< orphan*/  c_send_w; int /*<<< orphan*/  c_map_queued; int /*<<< orphan*/  c_flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  imm_data; } ;
struct ib_wc {scalar_t__ wr_id; int /*<<< orphan*/  status; TYPE_1__ ex; int /*<<< orphan*/  byte_len; } ;

/* Variables and functions */
 int HZ ; 
 int IB_SEND_SIGNALED ; 
 int /*<<< orphan*/  IB_WC_SUCCESS ; 
 scalar_t__ RDS_IB_ACK_WR_ID ; 
 int /*<<< orphan*/  RDS_LL_SEND_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rds_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_ib_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct rds_connection*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 struct rds_message* FUNC9 (struct rds_ib_connection*,struct rds_ib_send_work*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rds_ib_connection*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rds_message*) ; 
 int /*<<< orphan*/  FUNC13 (struct rds_message*) ; 
 int /*<<< orphan*/  rds_wq ; 
 int /*<<< orphan*/  FUNC14 (char*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_ib_tx_cq_event ; 
 int /*<<< orphan*/  s_ib_tx_stalled ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC18(struct rds_ib_connection *ic, struct ib_wc *wc)
{
	struct rds_message *rm = NULL;
	struct rds_connection *conn = ic->conn;
	struct rds_ib_send_work *send;
	u32 completed;
	u32 oldest;
	u32 i = 0;
	int nr_sig = 0;


	FUNC14("wc wr_id 0x%llx status %u (%s) byte_len %u imm_data %u\n",
		 (unsigned long long)wc->wr_id, wc->status,
		 FUNC1(wc->status), wc->byte_len,
		 FUNC0(wc->ex.imm_data));
	FUNC10(s_ib_tx_cq_event);

	if (wc->wr_id == RDS_IB_ACK_WR_ID) {
		if (FUNC17(jiffies, ic->i_ack_queued + HZ / 2))
			FUNC10(s_ib_tx_stalled);
		FUNC4(ic);
		return;
	}

	oldest = FUNC8(&ic->i_send_ring);

	completed = FUNC6(&ic->i_send_ring, wc->wr_id, oldest);

	for (i = 0; i < completed; i++) {
		send = &ic->i_sends[oldest];
		if (send->s_wr.send_flags & IB_SEND_SIGNALED)
			nr_sig++;

		rm = FUNC9(ic, send, wc->status);

		if (FUNC17(jiffies, send->s_queued + HZ / 2))
			FUNC10(s_ib_tx_stalled);

		if (send->s_op) {
			if (send->s_op == rm->m_final_op) {
				/* If anyone waited for this message to get
				 * flushed out, wake them up now
				 */
				FUNC13(rm);
			}
			FUNC12(rm);
			send->s_op = NULL;
		}

		oldest = (oldest + 1) % ic->i_send_ring.w_nr;
	}

	FUNC7(&ic->i_send_ring, completed);
	FUNC11(ic, nr_sig);
	nr_sig = 0;

	if (FUNC15(RDS_LL_SEND_FULL, &conn->c_flags) ||
	    FUNC16(0, &conn->c_map_queued))
		FUNC2(rds_wq, &conn->c_send_w, 0);

	/* We expect errors as the qp is drained during shutdown */
	if (wc->status != IB_WC_SUCCESS && FUNC3(conn)) {
		FUNC5(conn, "send completion on <%pI6c,%pI6c,%d> had status %u (%s), disconnecting and reconnecting\n",
				  &conn->c_laddr, &conn->c_faddr,
				  conn->c_tos, wc->status,
				  FUNC1(wc->status));
	}
}