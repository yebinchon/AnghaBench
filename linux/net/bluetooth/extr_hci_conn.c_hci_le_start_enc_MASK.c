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
struct hci_cp_le_start_enc {int /*<<< orphan*/  ltk; int /*<<< orphan*/  ediv; int /*<<< orphan*/  rand; int /*<<< orphan*/  handle; } ;
struct hci_conn {int /*<<< orphan*/  handle; struct hci_dev* hdev; } ;
typedef  int /*<<< orphan*/  cp ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 int /*<<< orphan*/  HCI_OP_LE_START_ENC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_le_start_enc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_cp_le_start_enc*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct hci_conn *conn, __le16 ediv, __le64 rand,
		      __u8 ltk[16], __u8 key_size)
{
	struct hci_dev *hdev = conn->hdev;
	struct hci_cp_le_start_enc cp;

	FUNC0("hcon %p", conn);

	FUNC4(&cp, 0, sizeof(cp));

	cp.handle = FUNC1(conn->handle);
	cp.rand = rand;
	cp.ediv = ediv;
	FUNC3(cp.ltk, ltk, key_size);

	FUNC2(hdev, HCI_OP_LE_START_ENC, sizeof(cp), &cp);
}