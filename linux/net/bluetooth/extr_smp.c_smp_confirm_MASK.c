#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct smp_cmd_pairing_confirm {int /*<<< orphan*/  confirm_val; } ;
struct smp_chan {struct l2cap_conn* conn; int /*<<< orphan*/  flags; int /*<<< orphan*/  prsp; int /*<<< orphan*/  preq; int /*<<< orphan*/  prnd; int /*<<< orphan*/  tk; } ;
struct l2cap_conn {TYPE_1__* hcon; } ;
typedef  int /*<<< orphan*/  cp ;
struct TYPE_2__ {scalar_t__ out; int /*<<< orphan*/  resp_addr; int /*<<< orphan*/  resp_addr_type; int /*<<< orphan*/  init_addr; int /*<<< orphan*/  init_addr_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct smp_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_CONFIRM ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_RANDOM ; 
 int /*<<< orphan*/  SMP_FLAG_CFM_PENDING ; 
 int /*<<< orphan*/  SMP_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_conn*,int /*<<< orphan*/ ,int,struct smp_cmd_pairing_confirm*) ; 

__attribute__((used)) static u8 FUNC5(struct smp_chan *smp)
{
	struct l2cap_conn *conn = smp->conn;
	struct smp_cmd_pairing_confirm cp;
	int ret;

	FUNC0("conn %p", conn);

	ret = FUNC3(smp->tk, smp->prnd, smp->preq, smp->prsp,
		     conn->hcon->init_addr_type, &conn->hcon->init_addr,
		     conn->hcon->resp_addr_type, &conn->hcon->resp_addr,
		     cp.confirm_val);
	if (ret)
		return SMP_UNSPECIFIED;

	FUNC2(SMP_FLAG_CFM_PENDING, &smp->flags);

	FUNC4(smp->conn, SMP_CMD_PAIRING_CONFIRM, sizeof(cp), &cp);

	if (conn->hcon->out)
		FUNC1(smp, SMP_CMD_PAIRING_CONFIRM);
	else
		FUNC1(smp, SMP_CMD_PAIRING_RANDOM);

	return 0;
}