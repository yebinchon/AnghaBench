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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct smp_chan {int /*<<< orphan*/  flags; int /*<<< orphan*/  tk; } ;
struct l2cap_conn {struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_conn {struct l2cap_conn* l2cap_data; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
#define  MGMT_OP_USER_CONFIRM_NEG_REPLY 131 
#define  MGMT_OP_USER_CONFIRM_REPLY 130 
#define  MGMT_OP_USER_PASSKEY_NEG_REPLY 129 
#define  MGMT_OP_USER_PASSKEY_REPLY 128 
 int /*<<< orphan*/  SMP_FLAG_CFM_PENDING ; 
 int /*<<< orphan*/  SMP_FLAG_SC ; 
 int /*<<< orphan*/  SMP_FLAG_TK_VALID ; 
 scalar_t__ SMP_PASSKEY_ENTRY_FAILED ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct smp_chan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct smp_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_conn*,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(struct hci_conn *hcon, u16 mgmt_op, __le32 passkey)
{
	struct l2cap_conn *conn = hcon->l2cap_data;
	struct l2cap_chan *chan;
	struct smp_chan *smp;
	u32 value;
	int err;

	FUNC0("");

	if (!conn)
		return -ENOTCONN;

	chan = conn->smp;
	if (!chan)
		return -ENOTCONN;

	FUNC1(chan);
	if (!chan->data) {
		err = -ENOTCONN;
		goto unlock;
	}

	smp = chan->data;

	if (FUNC10(SMP_FLAG_SC, &smp->flags)) {
		err = FUNC6(smp, mgmt_op, passkey);
		goto unlock;
	}

	switch (mgmt_op) {
	case MGMT_OP_USER_PASSKEY_REPLY:
		value = FUNC3(passkey);
		FUNC4(smp->tk, 0, sizeof(smp->tk));
		FUNC0("PassKey: %d", value);
		FUNC5(value, smp->tk);
		/* Fall Through */
	case MGMT_OP_USER_CONFIRM_REPLY:
		FUNC7(SMP_FLAG_TK_VALID, &smp->flags);
		break;
	case MGMT_OP_USER_PASSKEY_NEG_REPLY:
	case MGMT_OP_USER_CONFIRM_NEG_REPLY:
		FUNC9(conn, SMP_PASSKEY_ENTRY_FAILED);
		err = 0;
		goto unlock;
	default:
		FUNC9(conn, SMP_PASSKEY_ENTRY_FAILED);
		err = -EOPNOTSUPP;
		goto unlock;
	}

	err = 0;

	/* If it is our turn to send Pairing Confirm, do so now */
	if (FUNC10(SMP_FLAG_CFM_PENDING, &smp->flags)) {
		u8 rsp = FUNC8(smp);
		if (rsp)
			FUNC9(conn, rsp);
	}

unlock:
	FUNC2(chan);
	return err;
}