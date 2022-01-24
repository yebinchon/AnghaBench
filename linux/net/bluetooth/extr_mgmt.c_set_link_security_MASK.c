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
typedef  int /*<<< orphan*/  val ;
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_AUTH ; 
 int /*<<< orphan*/  HCI_LINK_SECURITY ; 
 int /*<<< orphan*/  HCI_OP_WRITE_AUTH_ENABLE ; 
 int /*<<< orphan*/  MGMT_OP_SET_LINK_SECURITY ; 
 int MGMT_STATUS_BUSY ; 
 int MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int FUNC5 (struct hci_dev*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int FUNC7 (struct hci_dev*) ; 
 int FUNC8 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mgmt_pending_cmd* FUNC9 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mgmt_pending_cmd*) ; 
 int FUNC11 (struct hci_dev*,struct sock*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct hci_dev*) ; 
 int FUNC13 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct sock *sk, struct hci_dev *hdev, void *data,
			     u16 len)
{
	struct mgmt_mode *cp = data;
	struct mgmt_pending_cmd *cmd;
	u8 val, status;
	int err;

	FUNC0("request for %s", hdev->name);

	status = FUNC7(hdev);
	if (status)
		return FUNC8(sk, hdev->id, MGMT_OP_SET_LINK_SECURITY,
				       status);

	if (cp->val != 0x00 && cp->val != 0x01)
		return FUNC8(sk, hdev->id, MGMT_OP_SET_LINK_SECURITY,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC2(hdev);

	if (!FUNC6(hdev)) {
		bool changed = false;

		if (!!cp->val != FUNC3(hdev, HCI_LINK_SECURITY)) {
			FUNC1(hdev, HCI_LINK_SECURITY);
			changed = true;
		}

		err = FUNC13(sk, MGMT_OP_SET_LINK_SECURITY, hdev);
		if (err < 0)
			goto failed;

		if (changed)
			err = FUNC11(hdev, sk);

		goto failed;
	}

	if (FUNC12(MGMT_OP_SET_LINK_SECURITY, hdev)) {
		err = FUNC8(sk, hdev->id, MGMT_OP_SET_LINK_SECURITY,
				      MGMT_STATUS_BUSY);
		goto failed;
	}

	val = !!cp->val;

	if (FUNC14(HCI_AUTH, &hdev->flags) == val) {
		err = FUNC13(sk, MGMT_OP_SET_LINK_SECURITY, hdev);
		goto failed;
	}

	cmd = FUNC9(sk, MGMT_OP_SET_LINK_SECURITY, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto failed;
	}

	err = FUNC5(hdev, HCI_OP_WRITE_AUTH_ENABLE, sizeof(val), &val);
	if (err < 0) {
		FUNC10(cmd);
		goto failed;
	}

failed:
	FUNC4(hdev);
	return err;
}