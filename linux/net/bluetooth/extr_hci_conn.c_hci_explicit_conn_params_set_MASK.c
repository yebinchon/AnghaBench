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
typedef  int /*<<< orphan*/  u8 ;
struct hci_dev {int /*<<< orphan*/  pend_le_conns; } ;
struct hci_conn_params {scalar_t__ auto_connect; int explicit_connect; int /*<<< orphan*/  action; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int EISCONN ; 
 int ENOMEM ; 
 scalar_t__ HCI_AUTO_CONN_DISABLED ; 
 scalar_t__ HCI_AUTO_CONN_EXPLICIT ; 
 scalar_t__ HCI_AUTO_CONN_REPORT ; 
 struct hci_conn_params* FUNC1 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hci_conn_params* FUNC2 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hci_dev *hdev,
					bdaddr_t *addr, u8 addr_type)
{
	struct hci_conn_params *params;

	if (FUNC3(hdev, addr, addr_type))
		return -EISCONN;

	params = FUNC2(hdev, addr, addr_type);
	if (!params) {
		params = FUNC1(hdev, addr, addr_type);
		if (!params)
			return -ENOMEM;

		/* If we created new params, mark them to be deleted in
		 * hci_connect_le_scan_cleanup. It's different case than
		 * existing disabled params, those will stay after cleanup.
		 */
		params->auto_connect = HCI_AUTO_CONN_EXPLICIT;
	}

	/* We're trying to connect, so make sure params are at pend_le_conns */
	if (params->auto_connect == HCI_AUTO_CONN_DISABLED ||
	    params->auto_connect == HCI_AUTO_CONN_REPORT ||
	    params->auto_connect == HCI_AUTO_CONN_EXPLICIT) {
		FUNC5(&params->action);
		FUNC4(&params->action, &hdev->pend_le_conns);
	}

	params->explicit_connect = true;

	FUNC0("addr %pMR (type %u) auto_connect %u", addr, addr_type,
	       params->auto_connect);

	return 0;
}