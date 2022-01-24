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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/  bdaddr; } ;
struct mgmt_ev_new_conn_param {void* timeout; void* latency; void* max_interval; void* min_interval; int /*<<< orphan*/  store_hint; TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  ev ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  LE_LINK ; 
 int /*<<< orphan*/  MGMT_EV_NEW_CONN_PARAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mgmt_ev_new_conn_param*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct hci_dev*,struct mgmt_ev_new_conn_param*,int,int /*<<< orphan*/ *) ; 

void FUNC6(struct hci_dev *hdev, bdaddr_t *bdaddr,
			 u8 bdaddr_type, u8 store_hint, u16 min_interval,
			 u16 max_interval, u16 latency, u16 timeout)
{
	struct mgmt_ev_new_conn_param ev;

	if (!FUNC2(bdaddr, bdaddr_type))
		return;

	FUNC4(&ev, 0, sizeof(ev));
	FUNC0(&ev.addr.bdaddr, bdaddr);
	ev.addr.type = FUNC3(LE_LINK, bdaddr_type);
	ev.store_hint = store_hint;
	ev.min_interval = FUNC1(min_interval);
	ev.max_interval = FUNC1(max_interval);
	ev.latency = FUNC1(latency);
	ev.timeout = FUNC1(timeout);

	FUNC5(MGMT_EV_NEW_CONN_PARAM, hdev, &ev, sizeof(ev), NULL);
}