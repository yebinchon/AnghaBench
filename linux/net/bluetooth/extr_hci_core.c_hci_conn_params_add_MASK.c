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
struct hci_dev {int /*<<< orphan*/  le_supv_timeout; int /*<<< orphan*/  le_conn_latency; int /*<<< orphan*/  le_conn_max_interval; int /*<<< orphan*/  le_conn_min_interval; int /*<<< orphan*/  le_conn_params; } ;
struct hci_conn_params {int /*<<< orphan*/  auto_connect; int /*<<< orphan*/  supervision_timeout; int /*<<< orphan*/  conn_latency; int /*<<< orphan*/  conn_max_interval; int /*<<< orphan*/  conn_min_interval; int /*<<< orphan*/  action; int /*<<< orphan*/  list; int /*<<< orphan*/  addr_type; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_AUTO_CONN_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,char*) ; 
 struct hci_conn_params* FUNC4 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hci_conn_params* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct hci_conn_params *FUNC7(struct hci_dev *hdev,
					    bdaddr_t *addr, u8 addr_type)
{
	struct hci_conn_params *params;

	params = FUNC4(hdev, addr, addr_type);
	if (params)
		return params;

	params = FUNC5(sizeof(*params), GFP_KERNEL);
	if (!params) {
		FUNC3(hdev, "out of memory");
		return NULL;
	}

	FUNC2(&params->addr, addr);
	params->addr_type = addr_type;

	FUNC6(&params->list, &hdev->le_conn_params);
	FUNC1(&params->action);

	params->conn_min_interval = hdev->le_conn_min_interval;
	params->conn_max_interval = hdev->le_conn_max_interval;
	params->conn_latency = hdev->le_conn_latency;
	params->supervision_timeout = hdev->le_supv_timeout;
	params->auto_connect = HCI_AUTO_CONN_DISABLED;

	FUNC0("addr %pMR (type %u)", addr, addr_type);

	return params;
}