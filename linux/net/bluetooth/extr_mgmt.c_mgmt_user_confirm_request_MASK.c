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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_ev_user_confirm_request {int /*<<< orphan*/  value; int /*<<< orphan*/  confirm_hint; TYPE_1__ addr; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  ev ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGMT_EV_USER_CONFIRM_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct hci_dev*,struct mgmt_ev_user_confirm_request*,int,int /*<<< orphan*/ *) ; 

int FUNC5(struct hci_dev *hdev, bdaddr_t *bdaddr,
			      u8 link_type, u8 addr_type, u32 value,
			      u8 confirm_hint)
{
	struct mgmt_ev_user_confirm_request ev;

	FUNC0("%s", hdev->name);

	FUNC1(&ev.addr.bdaddr, bdaddr);
	ev.addr.type = FUNC3(link_type, addr_type);
	ev.confirm_hint = confirm_hint;
	ev.value = FUNC2(value);

	return FUNC4(MGMT_EV_USER_CONFIRM_REQUEST, hdev, &ev, sizeof(ev),
			  NULL);
}