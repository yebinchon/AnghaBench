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
struct hci_cp_disconn_logical_link {int /*<<< orphan*/  log_handle; } ;
struct hci_conn {scalar_t__ state; int /*<<< orphan*/  hdev; } ;
struct hci_chan {int /*<<< orphan*/  handle; struct hci_conn* conn; } ;
typedef  int /*<<< orphan*/  cp ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_chan*) ; 
 int /*<<< orphan*/  HCI_OP_DISCONN_LOGICAL_LINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct hci_cp_disconn_logical_link*) ; 

void FUNC3(struct hci_chan *hchan)
{
	struct hci_conn *hcon = hchan->conn;
	struct hci_cp_disconn_logical_link cp;

	if (hcon->state != BT_CONNECTED) {
		FUNC0("hchan %p not connected", hchan);
		return;
	}

	cp.log_handle = FUNC1(hchan->handle);
	FUNC2(hcon->hdev, HCI_OP_DISCONN_LOGICAL_LINK, sizeof(cp), &cp);
}