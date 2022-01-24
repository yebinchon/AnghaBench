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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_ev_device_found {int /*<<< orphan*/  eir_len; int /*<<< orphan*/  eir; int /*<<< orphan*/  rssi; TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIR_NAME_COMPLETE ; 
 int /*<<< orphan*/  HCI_MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  MGMT_EV_DEVICE_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hci_dev*,struct mgmt_ev_device_found*,scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC6(struct hci_dev *hdev, bdaddr_t *bdaddr, u8 link_type,
		      u8 addr_type, s8 rssi, u8 *name, u8 name_len)
{
	struct mgmt_ev_device_found *ev;
	char buf[sizeof(*ev) + HCI_MAX_NAME_LENGTH + 2];
	u16 eir_len;

	ev = (struct mgmt_ev_device_found *) buf;

	FUNC4(buf, 0, sizeof(buf));

	FUNC0(&ev->addr.bdaddr, bdaddr);
	ev->addr.type = FUNC3(link_type, addr_type);
	ev->rssi = rssi;

	eir_len = FUNC2(ev->eir, 0, EIR_NAME_COMPLETE, name,
				  name_len);

	ev->eir_len = FUNC1(eir_len);

	FUNC5(MGMT_EV_DEVICE_FOUND, hdev, ev, sizeof(*ev) + eir_len, NULL);
}