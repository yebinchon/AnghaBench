#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union smc_host_cursor {int dummy; } smc_host_cursor ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct smc_host_cdc_msg {int /*<<< orphan*/  conn_state_flags; int /*<<< orphan*/  prod_flags; int /*<<< orphan*/  cons; int /*<<< orphan*/  prod; int /*<<< orphan*/  token; int /*<<< orphan*/  seqno; int /*<<< orphan*/  len; TYPE_2__ common; } ;
struct smc_connection {struct smc_host_cdc_msg local_tx_ctrl; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct smc_cdc_msg {int /*<<< orphan*/  conn_state_flags; int /*<<< orphan*/  prod_flags; int /*<<< orphan*/  cons; int /*<<< orphan*/  prod; int /*<<< orphan*/  token; int /*<<< orphan*/  seqno; int /*<<< orphan*/  len; TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,union smc_host_cursor*,struct smc_connection*) ; 

__attribute__((used)) static inline void FUNC3(struct smc_cdc_msg *peer,
				       struct smc_connection *conn,
				       union smc_host_cursor *save)
{
	struct smc_host_cdc_msg *local = &conn->local_tx_ctrl;

	peer->common.type = local->common.type;
	peer->len = local->len;
	peer->seqno = FUNC1(local->seqno);
	peer->token = FUNC0(local->token);
	FUNC2(&peer->prod, &local->prod, save, conn);
	FUNC2(&peer->cons, &local->cons, save, conn);
	peer->prod_flags = local->prod_flags;
	peer->conn_state_flags = local->conn_state_flags;
}