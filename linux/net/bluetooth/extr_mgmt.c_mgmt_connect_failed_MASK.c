#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_ev_connect_failed {int /*<<< orphan*/  status; TYPE_1__ addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct hci_dev {TYPE_2__ power_off; int /*<<< orphan*/  req_workqueue; } ;
typedef  int /*<<< orphan*/  ev ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_EV_CONNECT_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct hci_dev*,struct mgmt_ev_connect_failed*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct hci_dev *hdev, bdaddr_t *bdaddr, u8 link_type,
			 u8 addr_type, u8 status)
{
	struct mgmt_ev_connect_failed ev;

	/* The connection is still in hci_conn_hash so test for 1
	 * instead of 0 to know if this is the last one.
	 */
	if (FUNC5(hdev) && FUNC2(hdev) == 1) {
		FUNC1(&hdev->power_off);
		FUNC7(hdev->req_workqueue, &hdev->power_off.work);
	}

	FUNC0(&ev.addr.bdaddr, bdaddr);
	ev.addr.type = FUNC3(link_type, addr_type);
	ev.status = FUNC6(status);

	FUNC4(MGMT_EV_CONNECT_FAILED, hdev, &ev, sizeof(ev), NULL);
}