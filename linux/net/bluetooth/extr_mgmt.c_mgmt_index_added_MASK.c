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
struct mgmt_ev_ext_index {int type; int /*<<< orphan*/  bus; } ;
struct hci_dev {int dev_type; int /*<<< orphan*/  bus; int /*<<< orphan*/  quirks; } ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
#define  HCI_AMP 129 
 int /*<<< orphan*/  HCI_MGMT_EXT_INDEX_EVENTS ; 
 int /*<<< orphan*/  HCI_MGMT_INDEX_EVENTS ; 
 int /*<<< orphan*/  HCI_MGMT_UNCONF_INDEX_EVENTS ; 
#define  HCI_PRIMARY 128 
 int /*<<< orphan*/  HCI_QUIRK_RAW_DEVICE ; 
 int /*<<< orphan*/  HCI_UNCONFIGURED ; 
 int /*<<< orphan*/  MGMT_EV_EXT_INDEX_ADDED ; 
 int /*<<< orphan*/  MGMT_EV_INDEX_ADDED ; 
 int /*<<< orphan*/  MGMT_EV_UNCONF_INDEX_ADDED ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hci_dev*,struct mgmt_ev_ext_index*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct hci_dev *hdev)
{
	struct mgmt_ev_ext_index ev;

	if (FUNC2(HCI_QUIRK_RAW_DEVICE, &hdev->quirks))
		return;

	switch (hdev->dev_type) {
	case HCI_PRIMARY:
		if (FUNC0(hdev, HCI_UNCONFIGURED)) {
			FUNC1(MGMT_EV_UNCONF_INDEX_ADDED, hdev,
					 NULL, 0, HCI_MGMT_UNCONF_INDEX_EVENTS);
			ev.type = 0x01;
		} else {
			FUNC1(MGMT_EV_INDEX_ADDED, hdev, NULL, 0,
					 HCI_MGMT_INDEX_EVENTS);
			ev.type = 0x00;
		}
		break;
	case HCI_AMP:
		ev.type = 0x02;
		break;
	default:
		return;
	}

	ev.bus = hdev->bus;

	FUNC1(MGMT_EV_EXT_INDEX_ADDED, hdev, &ev, sizeof(ev),
			 HCI_MGMT_EXT_INDEX_EVENTS);
}