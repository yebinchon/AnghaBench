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
struct mgmt_cp_add_uuid {int /*<<< orphan*/  uuid; int /*<<< orphan*/  svc_hint; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  dev_class; int /*<<< orphan*/  id; int /*<<< orphan*/  uuids; int /*<<< orphan*/  name; } ;
struct bt_uuid {int /*<<< orphan*/  list; int /*<<< orphan*/  size; int /*<<< orphan*/  svc_hint; int /*<<< orphan*/  uuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MGMT_OP_ADD_UUID ; 
 int /*<<< orphan*/  MGMT_STATUS_BUSY ; 
 int /*<<< orphan*/  FUNC1 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_request*) ; 
 int /*<<< orphan*/  add_uuid_complete ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_request*,struct hci_dev*) ; 
 int FUNC7 (struct hci_request*,int /*<<< orphan*/ ) ; 
 struct bt_uuid* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgmt_pending_cmd* FUNC13 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct hci_dev*) ; 

__attribute__((used)) static int FUNC15(struct sock *sk, struct hci_dev *hdev, void *data, u16 len)
{
	struct mgmt_cp_add_uuid *cp = data;
	struct mgmt_pending_cmd *cmd;
	struct hci_request req;
	struct bt_uuid *uuid;
	int err;

	FUNC0("request for %s", hdev->name);

	FUNC4(hdev);

	if (FUNC14(hdev)) {
		err = FUNC12(sk, hdev->id, MGMT_OP_ADD_UUID,
				      MGMT_STATUS_BUSY);
		goto failed;
	}

	uuid = FUNC8(sizeof(*uuid), GFP_KERNEL);
	if (!uuid) {
		err = -ENOMEM;
		goto failed;
	}

	FUNC10(uuid->uuid, cp->uuid, 16);
	uuid->svc_hint = cp->svc_hint;
	uuid->size = FUNC3(cp->uuid);

	FUNC9(&uuid->list, &hdev->uuids);

	FUNC6(&req, hdev);

	FUNC1(&req);
	FUNC2(&req);

	err = FUNC7(&req, add_uuid_complete);
	if (err < 0) {
		if (err != -ENODATA)
			goto failed;

		err = FUNC11(sk, hdev->id, MGMT_OP_ADD_UUID, 0,
					hdev->dev_class, 3);
		goto failed;
	}

	cmd = FUNC13(sk, MGMT_OP_ADD_UUID, hdev, data, len);
	if (!cmd) {
		err = -ENOMEM;
		goto failed;
	}

	err = 0;

failed:
	FUNC5(hdev);
	return err;
}