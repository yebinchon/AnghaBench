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
struct mgmt_cp_set_dev_class {int minor; int major; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int major_class; int minor_class; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  id; int /*<<< orphan*/  service_cache; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_SERVICE_CACHE ; 
 int /*<<< orphan*/  MGMT_OP_SET_DEV_CLASS ; 
 int /*<<< orphan*/  MGMT_STATUS_BUSY ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_request*,struct hci_dev*) ; 
 int FUNC8 (struct hci_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct hci_dev*) ; 
 int FUNC11 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC13 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct hci_dev*) ; 
 int /*<<< orphan*/  set_class_complete ; 

__attribute__((used)) static int FUNC15(struct sock *sk, struct hci_dev *hdev, void *data,
			 u16 len)
{
	struct mgmt_cp_set_dev_class *cp = data;
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;
	int err;

	FUNC0("request for %s", hdev->name);

	if (!FUNC10(hdev))
		return FUNC12(sk, hdev->id, MGMT_OP_SET_DEV_CLASS,
				       MGMT_STATUS_NOT_SUPPORTED);

	FUNC4(hdev);

	if (FUNC14(hdev)) {
		err = FUNC12(sk, hdev->id, MGMT_OP_SET_DEV_CLASS,
				      MGMT_STATUS_BUSY);
		goto unlock;
	}

	if ((cp->minor & 0x03) != 0 || (cp->major & 0xe0) != 0) {
		err = FUNC12(sk, hdev->id, MGMT_OP_SET_DEV_CLASS,
				      MGMT_STATUS_INVALID_PARAMS);
		goto unlock;
	}

	hdev->major_class = cp->major;
	hdev->minor_class = cp->minor;

	if (!FUNC9(hdev)) {
		err = FUNC11(sk, hdev->id, MGMT_OP_SET_DEV_CLASS, 0,
					hdev->dev_class, 3);
		goto unlock;
	}

	FUNC7(&req, hdev);

	if (FUNC5(hdev, HCI_SERVICE_CACHE)) {
		FUNC6(hdev);
		FUNC3(&hdev->service_cache);
		FUNC4(hdev);
		FUNC2(&req);
	}

	FUNC1(&req);

	err = FUNC8(&req, set_class_complete);
	if (err < 0) {
		if (err != -ENODATA)
			goto unlock;

		err = FUNC11(sk, hdev->id, MGMT_OP_SET_DEV_CLASS, 0,
					hdev->dev_class, 3);
		goto unlock;
	}

	cmd = FUNC13(sk, MGMT_OP_SET_DEV_CLASS, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto unlock;
	}

	err = 0;

unlock:
	FUNC6(hdev);
	return err;
}