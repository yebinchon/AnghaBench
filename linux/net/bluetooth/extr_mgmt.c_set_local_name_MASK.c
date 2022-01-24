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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_cp_set_local_name {int /*<<< orphan*/  name; int /*<<< orphan*/  short_name; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  cur_adv_instance; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  id; int /*<<< orphan*/  short_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_ADVERTISING ; 
 int /*<<< orphan*/  HCI_MGMT_LOCAL_NAME_EVENTS ; 
 int /*<<< orphan*/  MGMT_EV_LOCAL_NAME_CHANGED ; 
 int /*<<< orphan*/  MGMT_OP_SET_LOCAL_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*,struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 scalar_t__ FUNC6 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_request*,struct hci_dev*) ; 
 int FUNC9 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*) ; 
 scalar_t__ FUNC11 (struct hci_dev*) ; 
 scalar_t__ FUNC12 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sock*) ; 
 struct mgmt_pending_cmd* FUNC17 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct mgmt_pending_cmd*) ; 
 int /*<<< orphan*/  set_name_complete ; 

__attribute__((used)) static int FUNC19(struct sock *sk, struct hci_dev *hdev, void *data,
			  u16 len)
{
	struct mgmt_cp_set_local_name *cp = data;
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;
	int err;

	FUNC0("");

	FUNC5(hdev);

	/* If the old values are the same as the new ones just return a
	 * direct command complete event.
	 */
	if (!FUNC13(hdev->dev_name, cp->name, sizeof(hdev->dev_name)) &&
	    !FUNC13(hdev->short_name, cp->short_name,
		    sizeof(hdev->short_name))) {
		err = FUNC15(sk, hdev->id, MGMT_OP_SET_LOCAL_NAME, 0,
					data, len);
		goto failed;
	}

	FUNC14(hdev->short_name, cp->short_name, sizeof(hdev->short_name));

	if (!FUNC10(hdev)) {
		FUNC14(hdev->dev_name, cp->name, sizeof(hdev->dev_name));

		err = FUNC15(sk, hdev->id, MGMT_OP_SET_LOCAL_NAME, 0,
					data, len);
		if (err < 0)
			goto failed;

		err = FUNC16(MGMT_EV_LOCAL_NAME_CHANGED, hdev, data,
					 len, HCI_MGMT_LOCAL_NAME_EVENTS, sk);
		FUNC4(hdev, sk);

		goto failed;
	}

	cmd = FUNC17(sk, MGMT_OP_SET_LOCAL_NAME, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto failed;
	}

	FUNC14(hdev->dev_name, cp->name, sizeof(hdev->dev_name));

	FUNC8(&req, hdev);

	if (FUNC11(hdev)) {
		FUNC2(&req);
		FUNC1(&req);
	}

	/* The name is stored in the scan response data and so
	 * no need to udpate the advertising data here.
	 */
	if (FUNC12(hdev) && FUNC6(hdev, HCI_ADVERTISING))
		FUNC3(&req, hdev->cur_adv_instance);

	err = FUNC9(&req, set_name_complete);
	if (err < 0)
		FUNC18(cmd);

failed:
	FUNC7(hdev);
	return err;
}