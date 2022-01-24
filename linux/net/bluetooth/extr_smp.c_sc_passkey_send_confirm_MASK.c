#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct smp_cmd_pairing_confirm {int /*<<< orphan*/  confirm_val; } ;
struct smp_chan {int passkey_round; int /*<<< orphan*/  prnd; int /*<<< orphan*/  remote_pk; int /*<<< orphan*/  local_pk; int /*<<< orphan*/  tfm_cmac; struct l2cap_conn* conn; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_conn {int passkey_notify; } ;
typedef  int /*<<< orphan*/  cfm ;

/* Variables and functions */
 int /*<<< orphan*/  SMP_CMD_PAIRING_CONFIRM ; 
 int SMP_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_conn*,int /*<<< orphan*/ ,int,struct smp_cmd_pairing_confirm*) ; 

__attribute__((used)) static u8 FUNC3(struct smp_chan *smp)
{
	struct l2cap_conn *conn = smp->conn;
	struct hci_conn *hcon = conn->hcon;
	struct smp_cmd_pairing_confirm cfm;
	u8 r;

	r = ((hcon->passkey_notify >> smp->passkey_round) & 0x01);
	r |= 0x80;

	FUNC0(smp->prnd, sizeof(smp->prnd));

	if (FUNC1(smp->tfm_cmac, smp->local_pk, smp->remote_pk, smp->prnd, r,
		   cfm.confirm_val))
		return SMP_UNSPECIFIED;

	FUNC2(conn, SMP_CMD_PAIRING_CONFIRM, sizeof(cfm), &cfm);

	return 0;
}