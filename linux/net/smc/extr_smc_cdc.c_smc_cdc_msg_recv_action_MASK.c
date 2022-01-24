#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
typedef  union smc_host_cursor {int dummy; } smc_host_cursor ;
struct TYPE_23__ {int /*<<< orphan*/  sk_shutdown; int /*<<< orphan*/  sk_err; int /*<<< orphan*/  (* sk_write_space ) (TYPE_8__*) ;int /*<<< orphan*/  (* sk_data_ready ) (TYPE_8__*) ;} ;
struct TYPE_19__ {int peer_conn_abort; } ;
struct TYPE_20__ {TYPE_4__ conn_state_flags; } ;
struct TYPE_18__ {scalar_t__ peer_conn_abort; } ;
struct TYPE_17__ {scalar_t__ urg_data_pending; scalar_t__ cons_curs_upd_req; scalar_t__ write_blocked; scalar_t__ urg_data_present; } ;
struct TYPE_15__ {TYPE_3__ conn_state_flags; TYPE_2__ prod_flags; int /*<<< orphan*/  prod; int /*<<< orphan*/  cons; } ;
struct smc_connection {scalar_t__ peer_rmbe_size; int urg_tx_pend; int /*<<< orphan*/  close_work; TYPE_5__ local_tx_ctrl; TYPE_14__ local_rx_ctrl; int /*<<< orphan*/  peer_rmbe_space; int /*<<< orphan*/  urg_state; int /*<<< orphan*/  bytes_to_rcv; TYPE_1__* rmb_desc; } ;
struct smc_sock {TYPE_8__ sk; TYPE_7__* clcsock; struct smc_connection conn; } ;
struct smc_cdc_msg {int dummy; } ;
struct TYPE_22__ {TYPE_6__* sk; } ;
struct TYPE_21__ {int /*<<< orphan*/  sk_shutdown; } ;
struct TYPE_16__ {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SMC_URG_NOTYET ; 
 int /*<<< orphan*/  SOCK_DONE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_sock*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_14__*,struct smc_cdc_msg*,struct smc_connection*) ; 
 scalar_t__ FUNC5 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC6 (union smc_host_cursor*,int /*<<< orphan*/ *,struct smc_connection*) ; 
 int FUNC7 (scalar_t__,union smc_host_cursor*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC9 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_8__*) ; 

__attribute__((used)) static void FUNC18(struct smc_sock *smc,
				    struct smc_cdc_msg *cdc)
{
	union smc_host_cursor cons_old, prod_old;
	struct smc_connection *conn = &smc->conn;
	int diff_cons, diff_prod;

	FUNC6(&prod_old, &conn->local_rx_ctrl.prod, conn);
	FUNC6(&cons_old, &conn->local_rx_ctrl.cons, conn);
	FUNC4(&conn->local_rx_ctrl, cdc, conn);

	diff_cons = FUNC7(conn->peer_rmbe_size, &cons_old,
				  &conn->local_rx_ctrl.cons);
	if (diff_cons) {
		/* peer_rmbe_space is decreased during data transfer with RDMA
		 * write
		 */
		FUNC11();
		FUNC0(diff_cons, &conn->peer_rmbe_space);
		/* guarantee 0 <= peer_rmbe_space <= peer_rmbe_size */
		FUNC10();
	}

	diff_prod = FUNC7(conn->rmb_desc->len, &prod_old,
				  &conn->local_rx_ctrl.prod);
	if (diff_prod) {
		if (conn->local_rx_ctrl.prod_flags.urg_data_present)
			FUNC3(smc, &diff_prod);
		/* bytes_to_rcv is decreased in smc_recvmsg */
		FUNC11();
		FUNC0(diff_prod, &conn->bytes_to_rcv);
		/* guarantee 0 <= bytes_to_rcv <= rmb_desc->len */
		FUNC10();
		smc->sk.sk_data_ready(&smc->sk);
	} else {
		if (conn->local_rx_ctrl.prod_flags.write_blocked)
			smc->sk.sk_data_ready(&smc->sk);
		if (conn->local_rx_ctrl.prod_flags.urg_data_pending)
			conn->urg_state = SMC_URG_NOTYET;
	}

	/* trigger sndbuf consumer: RDMA write into peer RMBE and CDC */
	if ((diff_cons && FUNC8(conn)) ||
	    conn->local_rx_ctrl.prod_flags.cons_curs_upd_req ||
	    conn->local_rx_ctrl.prod_flags.urg_data_pending)
		FUNC9(conn);

	if (diff_cons && conn->urg_tx_pend &&
	    FUNC1(&conn->peer_rmbe_space) == conn->peer_rmbe_size) {
		/* urg data confirmed by peer, indicate we're ready for more */
		conn->urg_tx_pend = false;
		smc->sk.sk_write_space(&smc->sk);
	}

	if (conn->local_rx_ctrl.conn_state_flags.peer_conn_abort) {
		smc->sk.sk_err = ECONNRESET;
		conn->local_tx_ctrl.conn_state_flags.peer_conn_abort = 1;
	}
	if (FUNC5(conn)) {
		smc->sk.sk_shutdown |= RCV_SHUTDOWN;
		if (smc->clcsock && smc->clcsock->sk)
			smc->clcsock->sk->sk_shutdown |= RCV_SHUTDOWN;
		FUNC14(&smc->sk, SOCK_DONE);
		FUNC12(&smc->sk); /* sock_put in close_work */
		if (!FUNC2(&conn->close_work))
			FUNC13(&smc->sk);
	}
}