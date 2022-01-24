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
struct hci_dev {int dummy; } ;
struct cmd_lookup {scalar_t__ sk; struct hci_dev* member_1; int /*<<< orphan*/ * member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  MGMT_OP_SET_POWERED ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hci_dev*,int /*<<< orphan*/ ,struct cmd_lookup*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  settings_rsp ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

void FUNC8(struct hci_dev *hdev, int err)
{
	struct cmd_lookup match = { NULL, hdev };

	FUNC0("err %d", err);

	FUNC1(hdev);

	if (!err) {
		FUNC6(hdev);
		FUNC3(hdev);
	}

	FUNC4(MGMT_OP_SET_POWERED, hdev, settings_rsp, &match);

	FUNC5(hdev, match.sk);

	if (match.sk)
		FUNC7(match.sk);

	FUNC2(hdev);
}