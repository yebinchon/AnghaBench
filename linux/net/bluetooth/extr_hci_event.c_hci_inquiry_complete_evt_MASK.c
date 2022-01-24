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
struct sk_buff {scalar_t__ data; } ;
struct inquiry_entry {int /*<<< orphan*/  name_state; } ;
struct discovery_state {scalar_t__ state; int /*<<< orphan*/  resolve; } ;
struct hci_dev {int /*<<< orphan*/  quirks; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; struct discovery_state discovery; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DISCOVERY_FINDING ; 
 int /*<<< orphan*/  DISCOVERY_RESOLVING ; 
 int /*<<< orphan*/  DISCOVERY_STOPPED ; 
 int /*<<< orphan*/  HCI_INQUIRY ; 
 int /*<<< orphan*/  HCI_LE_SCAN ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  HCI_QUIRK_SIMULTANEOUS_DISCOVERY ; 
 int /*<<< orphan*/  NAME_NEEDED ; 
 int /*<<< orphan*/  NAME_PENDING ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 struct inquiry_entry* FUNC6 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct hci_dev*,struct inquiry_entry*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct hci_dev *hdev, struct sk_buff *skb)
{
	__u8 status = *((__u8 *) skb->data);
	struct discovery_state *discov = &hdev->discovery;
	struct inquiry_entry *e;

	FUNC0("%s status 0x%2.2x", hdev->name, status);

	FUNC1(hdev);

	if (!FUNC10(HCI_INQUIRY, &hdev->flags))
		return;

	FUNC9(); /* wake_up_bit advises about this barrier */
	FUNC12(&hdev->flags, HCI_INQUIRY);

	if (!FUNC3(hdev, HCI_MGMT))
		return;

	FUNC2(hdev);

	if (discov->state != DISCOVERY_FINDING)
		goto unlock;

	if (FUNC8(&discov->resolve)) {
		/* When BR/EDR inquiry is active and no LE scanning is in
		 * progress, then change discovery state to indicate completion.
		 *
		 * When running LE scanning and BR/EDR inquiry simultaneously
		 * and the LE scan already finished, then change the discovery
		 * state to indicate completion.
		 */
		if (!FUNC3(hdev, HCI_LE_SCAN) ||
		    !FUNC11(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks))
			FUNC5(hdev, DISCOVERY_STOPPED);
		goto unlock;
	}

	e = FUNC6(hdev, BDADDR_ANY, NAME_NEEDED);
	if (e && FUNC7(hdev, e) == 0) {
		e->name_state = NAME_PENDING;
		FUNC5(hdev, DISCOVERY_RESOLVING);
	} else {
		/* When BR/EDR inquiry is active and no LE scanning is in
		 * progress, then change discovery state to indicate completion.
		 *
		 * When running LE scanning and BR/EDR inquiry simultaneously
		 * and the LE scan already finished, then change the discovery
		 * state to indicate completion.
		 */
		if (!FUNC3(hdev, HCI_LE_SCAN) ||
		    !FUNC11(HCI_QUIRK_SIMULTANEOUS_DISCOVERY, &hdev->quirks))
			FUNC5(hdev, DISCOVERY_STOPPED);
	}

unlock:
	FUNC4(hdev);
}