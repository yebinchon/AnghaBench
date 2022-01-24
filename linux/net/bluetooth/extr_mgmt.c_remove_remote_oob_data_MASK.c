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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_cp_remove_remote_oob_data {TYPE_1__ addr; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 scalar_t__ BDADDR_BREDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGMT_OP_REMOVE_REMOTE_OOB_DATA ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int FUNC5 (struct hci_dev*,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC6 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct hci_dev *hdev,
				  void *data, u16 len)
{
	struct mgmt_cp_remove_remote_oob_data *cp = data;
	u8 status;
	int err;

	FUNC0("%s", hdev->name);

	if (cp->addr.type != BDADDR_BREDR)
		return FUNC6(sk, hdev->id,
					 MGMT_OP_REMOVE_REMOTE_OOB_DATA,
					 MGMT_STATUS_INVALID_PARAMS,
					 &cp->addr, sizeof(cp->addr));

	FUNC2(hdev);

	if (!FUNC1(&cp->addr.bdaddr, BDADDR_ANY)) {
		FUNC4(hdev);
		status = MGMT_STATUS_SUCCESS;
		goto done;
	}

	err = FUNC5(hdev, &cp->addr.bdaddr, cp->addr.type);
	if (err < 0)
		status = MGMT_STATUS_INVALID_PARAMS;
	else
		status = MGMT_STATUS_SUCCESS;

done:
	err = FUNC6(sk, hdev->id, MGMT_OP_REMOVE_REMOTE_OOB_DATA,
				status, &cp->addr, sizeof(cp->addr));

	FUNC3(hdev);
	return err;
}