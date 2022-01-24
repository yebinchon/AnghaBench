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
struct sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_ev_device_removed {TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  ev ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MGMT_EV_DEVICE_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct hci_dev*,struct mgmt_ev_device_removed*,int,struct sock*) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, struct hci_dev *hdev,
			   bdaddr_t *bdaddr, u8 type)
{
	struct mgmt_ev_device_removed ev;

	FUNC0(&ev.addr.bdaddr, bdaddr);
	ev.addr.type = type;

	FUNC1(MGMT_EV_DEVICE_REMOVED, hdev, &ev, sizeof(ev), sk);
}