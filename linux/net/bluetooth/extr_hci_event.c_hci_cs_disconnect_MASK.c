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
typedef  int /*<<< orphan*/  u8 ;
struct hci_dev {int dummy; } ;
struct hci_cp_disconnect {int /*<<< orphan*/  handle; } ;
struct hci_conn {int /*<<< orphan*/  dst_type; int /*<<< orphan*/  type; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_OP_DISCONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 struct hci_cp_disconnect* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hci_dev *hdev, u8 status)
{
	struct hci_cp_disconnect *cp;
	struct hci_conn *conn;

	if (!status)
		return;

	cp = FUNC4(hdev, HCI_OP_DISCONNECT);
	if (!cp)
		return;

	FUNC2(hdev);

	conn = FUNC1(hdev, FUNC0(cp->handle));
	if (conn)
		FUNC5(hdev, &conn->dst, conn->type,
				       conn->dst_type, status);

	FUNC3(hdev);
}