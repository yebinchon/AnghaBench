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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct TYPE_3__ {int* b; } ;
struct mgmt_cp_set_static_address {TYPE_1__ bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  static_addr; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  BDADDR_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGMT_OP_SET_STATIC_ADDRESS ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  MGMT_STATUS_REJECTED ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 scalar_t__ FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int FUNC7 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct hci_dev*,struct sock*) ; 
 int FUNC9 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC10(struct sock *sk, struct hci_dev *hdev,
			      void *data, u16 len)
{
	struct mgmt_cp_set_static_address *cp = data;
	int err;

	FUNC0("%s", hdev->name);

	if (!FUNC6(hdev))
		return FUNC7(sk, hdev->id, MGMT_OP_SET_STATIC_ADDRESS,
				       MGMT_STATUS_NOT_SUPPORTED);

	if (FUNC5(hdev))
		return FUNC7(sk, hdev->id, MGMT_OP_SET_STATIC_ADDRESS,
				       MGMT_STATUS_REJECTED);

	if (FUNC1(&cp->bdaddr, BDADDR_ANY)) {
		if (!FUNC1(&cp->bdaddr, BDADDR_NONE))
			return FUNC7(sk, hdev->id,
					       MGMT_OP_SET_STATIC_ADDRESS,
					       MGMT_STATUS_INVALID_PARAMS);

		/* Two most significant bits shall be set */
		if ((cp->bdaddr.b[5] & 0xc0) != 0xc0)
			return FUNC7(sk, hdev->id,
					       MGMT_OP_SET_STATIC_ADDRESS,
					       MGMT_STATUS_INVALID_PARAMS);
	}

	FUNC3(hdev);

	FUNC2(&hdev->static_addr, &cp->bdaddr);

	err = FUNC9(sk, MGMT_OP_SET_STATIC_ADDRESS, hdev);
	if (err < 0)
		goto unlock;

	err = FUNC8(hdev, sk);

unlock:
	FUNC4(hdev);
	return err;
}