#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union smc_host_cursor {int dummy; } smc_host_cursor ;
struct TYPE_7__ {scalar_t__ write_blocked; scalar_t__ cons_curs_upd_req; } ;
struct TYPE_8__ {TYPE_3__ prod_flags; int /*<<< orphan*/  prod; } ;
struct TYPE_5__ {int /*<<< orphan*/  cons; } ;
struct smc_connection {int rmbe_update_limit; TYPE_4__ local_rx_ctrl; int /*<<< orphan*/  bytes_to_rcv; int /*<<< orphan*/  tx_work; scalar_t__ alert_token_local; TYPE_2__* rmb_desc; int /*<<< orphan*/  rx_curs_confirmed; TYPE_1__ local_tx_ctrl; } ;
struct TYPE_6__ {int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMC_TX_WORK_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC3 (union smc_host_cursor*,int /*<<< orphan*/ *,struct smc_connection*) ; 
 int FUNC4 (int,union smc_host_cursor*,union smc_host_cursor*) ; 
 int FUNC5 (int,union smc_host_cursor*,union smc_host_cursor*) ; 

void FUNC6(struct smc_connection *conn, bool force)
{
	union smc_host_cursor cfed, cons, prod;
	int sender_free = conn->rmb_desc->len;
	int to_confirm;

	FUNC3(&cons, &conn->local_tx_ctrl.cons, conn);
	FUNC3(&cfed, &conn->rx_curs_confirmed, conn);
	to_confirm = FUNC4(conn->rmb_desc->len, &cfed, &cons);
	if (to_confirm > conn->rmbe_update_limit) {
		FUNC3(&prod, &conn->local_rx_ctrl.prod, conn);
		sender_free = conn->rmb_desc->len -
			      FUNC5(conn->rmb_desc->len,
						  &cfed, &prod);
	}

	if (conn->local_rx_ctrl.prod_flags.cons_curs_upd_req ||
	    force ||
	    ((to_confirm > conn->rmbe_update_limit) &&
	     ((sender_free <= (conn->rmb_desc->len / 2)) ||
	      conn->local_rx_ctrl.prod_flags.write_blocked))) {
		if ((FUNC2(conn) < 0) &&
		    conn->alert_token_local) { /* connection healthy */
			FUNC1(&conn->tx_work,
					      SMC_TX_WORK_DELAY);
			return;
		}
	}
	if (conn->local_rx_ctrl.prod_flags.write_blocked &&
	    !FUNC0(&conn->bytes_to_rcv))
		conn->local_rx_ctrl.prod_flags.write_blocked = 0;
}