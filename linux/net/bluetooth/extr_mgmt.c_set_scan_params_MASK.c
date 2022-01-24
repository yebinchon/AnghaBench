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
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct mgmt_cp_set_scan_params {int /*<<< orphan*/  window; int /*<<< orphan*/  interval; } ;
struct hci_request {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct hci_dev {int le_scan_interval; int le_scan_window; TYPE_1__ discovery; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ DISCOVERY_STOPPED ; 
 int /*<<< orphan*/  HCI_LE_SCAN ; 
 int /*<<< orphan*/  MGMT_OP_SET_SCAN_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_INVALID_PARAMS ; 
 int /*<<< orphan*/  MGMT_STATUS_NOT_SUPPORTED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 scalar_t__ FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_request*,struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 int FUNC10 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sock *sk, struct hci_dev *hdev,
			   void *data, u16 len)
{
	struct mgmt_cp_set_scan_params *cp = data;
	__u16 interval, window;
	int err;

	FUNC0("%s", hdev->name);

	if (!FUNC9(hdev))
		return FUNC11(sk, hdev->id, MGMT_OP_SET_SCAN_PARAMS,
				       MGMT_STATUS_NOT_SUPPORTED);

	interval = FUNC1(cp->interval);

	if (interval < 0x0004 || interval > 0x4000)
		return FUNC11(sk, hdev->id, MGMT_OP_SET_SCAN_PARAMS,
				       MGMT_STATUS_INVALID_PARAMS);

	window = FUNC1(cp->window);

	if (window < 0x0004 || window > 0x4000)
		return FUNC11(sk, hdev->id, MGMT_OP_SET_SCAN_PARAMS,
				       MGMT_STATUS_INVALID_PARAMS);

	if (window > interval)
		return FUNC11(sk, hdev->id, MGMT_OP_SET_SCAN_PARAMS,
				       MGMT_STATUS_INVALID_PARAMS);

	FUNC2(hdev);

	hdev->le_scan_interval = interval;
	hdev->le_scan_window = window;

	err = FUNC10(sk, hdev->id, MGMT_OP_SET_SCAN_PARAMS, 0,
				NULL, 0);

	/* If background scan is running, restart it so new parameters are
	 * loaded.
	 */
	if (FUNC3(hdev, HCI_LE_SCAN) &&
	    hdev->discovery.state == DISCOVERY_STOPPED) {
		struct hci_request req;

		FUNC7(&req, hdev);

		FUNC6(&req);
		FUNC5(&req);

		FUNC8(&req, NULL);
	}

	FUNC4(hdev);

	return err;
}