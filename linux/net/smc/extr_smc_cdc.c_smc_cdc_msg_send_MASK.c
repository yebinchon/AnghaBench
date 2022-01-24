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
struct smc_wr_tx_pend_priv {int dummy; } ;
struct smc_wr_buf {int dummy; } ;
struct smc_link {int dummy; } ;
struct TYPE_6__ {scalar_t__ cons_curs_upd_req; } ;
struct TYPE_7__ {TYPE_2__ prod_flags; } ;
struct TYPE_5__ {scalar_t__ seqno; } ;
struct smc_connection {TYPE_3__ local_rx_ctrl; int /*<<< orphan*/  rx_curs_confirmed; scalar_t__ tx_cdc_seq; TYPE_1__ local_tx_ctrl; TYPE_4__* lgr; } ;
struct smc_cdc_tx_pend {int dummy; } ;
struct smc_cdc_msg {int dummy; } ;
struct TYPE_8__ {struct smc_link* lnk; } ;

/* Variables and functions */
 size_t SMC_SINGLE_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct smc_connection*,struct smc_cdc_tx_pend*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,union smc_host_cursor*,struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct smc_cdc_msg*,struct smc_connection*,union smc_host_cursor*) ; 
 int FUNC3 (struct smc_link*,struct smc_wr_tx_pend_priv*) ; 

int FUNC4(struct smc_connection *conn,
		     struct smc_wr_buf *wr_buf,
		     struct smc_cdc_tx_pend *pend)
{
	union smc_host_cursor cfed;
	struct smc_link *link;
	int rc;

	link = &conn->lgr->lnk[SMC_SINGLE_LINK];

	FUNC0(conn, pend);

	conn->tx_cdc_seq++;
	conn->local_tx_ctrl.seqno = conn->tx_cdc_seq;
	FUNC2((struct smc_cdc_msg *)wr_buf, conn, &cfed);
	rc = FUNC3(link, (struct smc_wr_tx_pend_priv *)pend);
	if (!rc) {
		FUNC1(&conn->rx_curs_confirmed, &cfed, conn);
		conn->local_rx_ctrl.prod_flags.cons_curs_upd_req = 0;
	}

	return rc;
}