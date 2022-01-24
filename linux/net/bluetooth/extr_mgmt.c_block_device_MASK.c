#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_cp_block_device {TYPE_1__ addr; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  blacklist; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGMT_EV_DEVICE_BLOCKED ; 
 int /*<<< orphan*/  MGMT_OP_BLOCK_DEVICE ; 
 int /*<<< orphan*/  MGMT_STATUS_FAILED ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int FUNC5 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct hci_dev*,TYPE_1__*,int,struct sock*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct hci_dev *hdev, void *data,
			u16 len)
{
	struct mgmt_cp_block_device *cp = data;
	u8 status;
	int err;

	FUNC0("%s", hdev->name);

	if (!FUNC1(cp->addr.type))
		return FUNC5(sk, hdev->id, MGMT_OP_BLOCK_DEVICE,
					 MGMT_STATUS_INVALID_PARAMS,
					 &cp->addr, sizeof(cp->addr));

	FUNC3(hdev);

	err = FUNC2(&hdev->blacklist, &cp->addr.bdaddr,
				  cp->addr.type);
	if (err < 0) {
		status = MGMT_STATUS_FAILED;
		goto done;
	}

	FUNC6(MGMT_EV_DEVICE_BLOCKED, hdev, &cp->addr, sizeof(cp->addr),
		   sk);
	status = MGMT_STATUS_SUCCESS;

done:
	err = FUNC5(sk, hdev->id, MGMT_OP_BLOCK_DEVICE, status,
				&cp->addr, sizeof(cp->addr));

	FUNC4(hdev);

	return err;
}