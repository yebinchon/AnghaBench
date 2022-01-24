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
struct l2cap_chan {int dummy; } ;
struct hci_dev {struct l2cap_chan* smp_bredr_data; struct l2cap_chan* smp_data; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCI_FORCE_BREDR_SMP ; 
 scalar_t__ FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  L2CAP_CID_SMP ; 
 int /*<<< orphan*/  L2CAP_CID_SMP_BREDR ; 
 int FUNC2 (struct l2cap_chan*) ; 
 scalar_t__ FUNC3 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  force_bredr_smp_fops ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  le_max_key_size_fops ; 
 int /*<<< orphan*/  le_min_key_size_fops ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 struct l2cap_chan* FUNC8 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_chan*) ; 

int FUNC10(struct hci_dev *hdev)
{
	struct l2cap_chan *chan;

	FUNC0("%s", hdev->name);

	/* If the controller does not support Low Energy operation, then
	 * there is also no need to register any SMP channel.
	 */
	if (!FUNC6(hdev))
		return 0;

	if (FUNC3(hdev->smp_data)) {
		chan = hdev->smp_data;
		hdev->smp_data = NULL;
		FUNC9(chan);
	}

	chan = FUNC8(hdev, L2CAP_CID_SMP);
	if (FUNC1(chan))
		return FUNC2(chan);

	hdev->smp_data = chan;

	FUNC4("le_min_key_size", 0644, hdev->debugfs, hdev,
			    &le_min_key_size_fops);
	FUNC4("le_max_key_size", 0644, hdev->debugfs, hdev,
			    &le_max_key_size_fops);

	/* If the controller does not support BR/EDR Secure Connections
	 * feature, then the BR/EDR SMP channel shall not be present.
	 *
	 * To test this with Bluetooth 4.0 controllers, create a debugfs
	 * switch that allows forcing BR/EDR SMP support and accepting
	 * cross-transport pairing on non-AES encrypted connections.
	 */
	if (!FUNC7(hdev)) {
		FUNC4("force_bredr_smp", 0644, hdev->debugfs,
				    hdev, &force_bredr_smp_fops);

		/* Flag can be already set here (due to power toggle) */
		if (!FUNC5(hdev, HCI_FORCE_BREDR_SMP))
			return 0;
	}

	if (FUNC3(hdev->smp_bredr_data)) {
		chan = hdev->smp_bredr_data;
		hdev->smp_bredr_data = NULL;
		FUNC9(chan);
	}

	chan = FUNC8(hdev, L2CAP_CID_SMP_BREDR);
	if (FUNC1(chan)) {
		int err = FUNC2(chan);
		chan = hdev->smp_data;
		hdev->smp_data = NULL;
		FUNC9(chan);
		return err;
	}

	hdev->smp_bredr_data = chan;

	return 0;
}