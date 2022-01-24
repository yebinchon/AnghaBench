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
struct TYPE_2__ {int /*<<< orphan*/  bdaddr; } ;
struct inquiry_entry {TYPE_1__ data; } ;
struct hci_request {struct hci_dev* hdev; } ;
struct discovery_state {scalar_t__ state; scalar_t__ type; } ;
struct hci_dev {int /*<<< orphan*/  le_scan_disable; int /*<<< orphan*/  flags; struct discovery_state discovery; int /*<<< orphan*/  name; } ;
struct hci_cp_remote_name_req_cancel {int /*<<< orphan*/  bdaddr; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ DISCOVERY_FINDING ; 
 scalar_t__ DISCOVERY_RESOLVING ; 
 scalar_t__ DISCOVERY_STOPPING ; 
 scalar_t__ DISCOV_TYPE_LE ; 
 int /*<<< orphan*/  HCI_INQUIRY ; 
 int /*<<< orphan*/  HCI_LE_SCAN ; 
 int /*<<< orphan*/  HCI_OP_INQUIRY_CANCEL ; 
 int /*<<< orphan*/  HCI_OP_REMOTE_NAME_REQ_CANCEL ; 
 int /*<<< orphan*/  NAME_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct inquiry_entry* FUNC4 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_request*,int /*<<< orphan*/ ,int,struct hci_cp_remote_name_req_cancel*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_request*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC8(struct hci_request *req)
{
	struct hci_dev *hdev = req->hdev;
	struct discovery_state *d = &hdev->discovery;
	struct hci_cp_remote_name_req_cancel cp;
	struct inquiry_entry *e;
	bool ret = false;

	FUNC0("%s state %u", hdev->name, hdev->discovery.state);

	if (d->state == DISCOVERY_FINDING || d->state == DISCOVERY_STOPPING) {
		if (FUNC7(HCI_INQUIRY, &hdev->flags))
			FUNC5(req, HCI_OP_INQUIRY_CANCEL, 0, NULL);

		if (FUNC3(hdev, HCI_LE_SCAN)) {
			FUNC2(&hdev->le_scan_disable);
			FUNC6(req);
		}

		ret = true;
	} else {
		/* Passive scanning */
		if (FUNC3(hdev, HCI_LE_SCAN)) {
			FUNC6(req);
			ret = true;
		}
	}

	/* No further actions needed for LE-only discovery */
	if (d->type == DISCOV_TYPE_LE)
		return ret;

	if (d->state == DISCOVERY_RESOLVING || d->state == DISCOVERY_STOPPING) {
		e = FUNC4(hdev, BDADDR_ANY,
						     NAME_PENDING);
		if (!e)
			return ret;

		FUNC1(&cp.bdaddr, &e->data.bdaddr);
		FUNC5(req, HCI_OP_REMOTE_NAME_REQ_CANCEL, sizeof(cp),
			    &cp);
		ret = true;
	}

	return ret;
}