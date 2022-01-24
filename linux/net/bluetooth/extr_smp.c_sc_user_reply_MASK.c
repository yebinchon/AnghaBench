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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct smp_chan {int /*<<< orphan*/  flags; int /*<<< orphan*/  passkey_round; struct l2cap_conn* conn; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_conn {scalar_t__ out; int /*<<< orphan*/  passkey_notify; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EIO ; 
#define  MGMT_OP_USER_CONFIRM_NEG_REPLY 130 
#define  MGMT_OP_USER_PASSKEY_NEG_REPLY 129 
#define  MGMT_OP_USER_PASSKEY_REPLY 128 
 int /*<<< orphan*/  FUNC0 (struct smp_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMP_CMD_DHKEY_CHECK ; 
 int /*<<< orphan*/  SMP_CMD_PAIRING_CONFIRM ; 
 int /*<<< orphan*/  SMP_FLAG_CFM_PENDING ; 
 int /*<<< orphan*/  SMP_FLAG_DHKEY_PENDING ; 
 int /*<<< orphan*/  SMP_FLAG_WAIT_USER ; 
 int /*<<< orphan*/  SMP_NUMERIC_COMP_FAILED ; 
 int /*<<< orphan*/  SMP_PASSKEY_ENTRY_FAILED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct smp_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_conn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct smp_chan *smp, u16 mgmt_op, __le32 passkey)
{
	struct l2cap_conn *conn = smp->conn;
	struct hci_conn *hcon = conn->hcon;
	u8 smp_op;

	FUNC1(SMP_FLAG_WAIT_USER, &smp->flags);

	switch (mgmt_op) {
	case MGMT_OP_USER_PASSKEY_NEG_REPLY:
		FUNC6(smp->conn, SMP_PASSKEY_ENTRY_FAILED);
		return 0;
	case MGMT_OP_USER_CONFIRM_NEG_REPLY:
		FUNC6(smp->conn, SMP_NUMERIC_COMP_FAILED);
		return 0;
	case MGMT_OP_USER_PASSKEY_REPLY:
		hcon->passkey_notify = FUNC2(passkey);
		smp->passkey_round = 0;

		if (FUNC7(SMP_FLAG_CFM_PENDING, &smp->flags))
			smp_op = SMP_CMD_PAIRING_CONFIRM;
		else
			smp_op = 0;

		if (FUNC5(smp, smp_op))
			return -EIO;

		return 0;
	}

	/* Initiator sends DHKey check first */
	if (hcon->out) {
		FUNC4(smp);
		FUNC0(smp, SMP_CMD_DHKEY_CHECK);
	} else if (FUNC7(SMP_FLAG_DHKEY_PENDING, &smp->flags)) {
		FUNC4(smp);
		FUNC3(smp);
	}

	return 0;
}