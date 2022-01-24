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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_mode {int val; } ;
struct hci_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_KEEP_DEBUG_KEYS ; 
 int /*<<< orphan*/  HCI_OP_WRITE_SSP_DEBUG_MODE ; 
 int /*<<< orphan*/  HCI_SSP_ENABLED ; 
 int /*<<< orphan*/  HCI_USE_DEBUG_KEYS ; 
 int /*<<< orphan*/  MGMT_OP_SET_DEBUG_KEYS ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC7 (struct hci_dev*) ; 
 int FUNC8 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hci_dev*,struct sock*) ; 
 int FUNC10 (struct sock*,int /*<<< orphan*/ ,struct hci_dev*) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct hci_dev *hdev,
			  void *data, u16 len)
{
	struct mgmt_mode *cp = data;
	bool changed, use_changed;
	int err;

	FUNC0("request for %s", hdev->name);

	if (cp->val != 0x00 && cp->val != 0x01 && cp->val != 0x02)
		return FUNC8(sk, hdev->id, MGMT_OP_SET_DEBUG_KEYS,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC1(hdev);

	if (cp->val)
		changed = !FUNC3(hdev, HCI_KEEP_DEBUG_KEYS);
	else
		changed = FUNC2(hdev,
						      HCI_KEEP_DEBUG_KEYS);

	if (cp->val == 0x02)
		use_changed = !FUNC3(hdev,
							 HCI_USE_DEBUG_KEYS);
	else
		use_changed = FUNC2(hdev,
							  HCI_USE_DEBUG_KEYS);

	if (FUNC7(hdev) && use_changed &&
	    FUNC4(hdev, HCI_SSP_ENABLED)) {
		u8 mode = (cp->val == 0x02) ? 0x01 : 0x00;
		FUNC6(hdev, HCI_OP_WRITE_SSP_DEBUG_MODE,
			     sizeof(mode), &mode);
	}

	err = FUNC10(sk, MGMT_OP_SET_DEBUG_KEYS, hdev);
	if (err < 0)
		goto unlock;

	if (changed)
		err = FUNC9(hdev, sk);

unlock:
	FUNC5(hdev);
	return err;
}