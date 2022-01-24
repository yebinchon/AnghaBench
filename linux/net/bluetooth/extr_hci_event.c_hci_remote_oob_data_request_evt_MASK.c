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
struct sk_buff {scalar_t__ data; } ;
struct oob_data {int /*<<< orphan*/  rand192; int /*<<< orphan*/  hash192; int /*<<< orphan*/  rand256; int /*<<< orphan*/  hash256; } ;
struct hci_ev_remote_oob_data_request {int /*<<< orphan*/  bdaddr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_cp_remote_oob_ext_data_reply {int /*<<< orphan*/  rand; int /*<<< orphan*/  hash; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  rand256; int /*<<< orphan*/  hash256; int /*<<< orphan*/  rand192; int /*<<< orphan*/  hash192; } ;
struct hci_cp_remote_oob_data_reply {int /*<<< orphan*/  rand; int /*<<< orphan*/  hash; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  rand256; int /*<<< orphan*/  hash256; int /*<<< orphan*/  rand192; int /*<<< orphan*/  hash192; } ;
struct hci_cp_remote_oob_data_neg_reply {int /*<<< orphan*/  rand; int /*<<< orphan*/  hash; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  rand256; int /*<<< orphan*/  hash256; int /*<<< orphan*/  rand192; int /*<<< orphan*/  hash192; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_BREDR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_OP_REMOTE_OOB_DATA_NEG_REPLY ; 
 int /*<<< orphan*/  HCI_OP_REMOTE_OOB_DATA_REPLY ; 
 int /*<<< orphan*/  HCI_OP_REMOTE_OOB_EXT_DATA_REPLY ; 
 int /*<<< orphan*/  HCI_SC_ONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 scalar_t__ FUNC4 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 struct oob_data* FUNC6 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*,int /*<<< orphan*/ ,int,struct hci_cp_remote_oob_ext_data_reply*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct hci_dev *hdev,
					    struct sk_buff *skb)
{
	struct hci_ev_remote_oob_data_request *ev = (void *) skb->data;
	struct oob_data *data;

	FUNC0("%s", hdev->name);

	FUNC3(hdev);

	if (!FUNC4(hdev, HCI_MGMT))
		goto unlock;

	data = FUNC6(hdev, &ev->bdaddr, BDADDR_BREDR);
	if (!data) {
		struct hci_cp_remote_oob_data_neg_reply cp;

		FUNC1(&cp.bdaddr, &ev->bdaddr);
		FUNC7(hdev, HCI_OP_REMOTE_OOB_DATA_NEG_REPLY,
			     sizeof(cp), &cp);
		goto unlock;
	}

	if (FUNC2(hdev)) {
		struct hci_cp_remote_oob_ext_data_reply cp;

		FUNC1(&cp.bdaddr, &ev->bdaddr);
		if (FUNC4(hdev, HCI_SC_ONLY)) {
			FUNC9(cp.hash192, 0, sizeof(cp.hash192));
			FUNC9(cp.rand192, 0, sizeof(cp.rand192));
		} else {
			FUNC8(cp.hash192, data->hash192, sizeof(cp.hash192));
			FUNC8(cp.rand192, data->rand192, sizeof(cp.rand192));
		}
		FUNC8(cp.hash256, data->hash256, sizeof(cp.hash256));
		FUNC8(cp.rand256, data->rand256, sizeof(cp.rand256));

		FUNC7(hdev, HCI_OP_REMOTE_OOB_EXT_DATA_REPLY,
			     sizeof(cp), &cp);
	} else {
		struct hci_cp_remote_oob_data_reply cp;

		FUNC1(&cp.bdaddr, &ev->bdaddr);
		FUNC8(cp.hash, data->hash192, sizeof(cp.hash));
		FUNC8(cp.rand, data->rand192, sizeof(cp.rand));

		FUNC7(hdev, HCI_OP_REMOTE_OOB_DATA_REPLY,
			     sizeof(cp), &cp);
	}

unlock:
	FUNC5(hdev);
}