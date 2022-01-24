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
struct hci_dev {scalar_t__ acl_last_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 scalar_t__ HCI_ACL_TX_TIMEOUT ; 
 int /*<<< orphan*/  HCI_UNCONFIGURED ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct hci_dev *hdev, unsigned int cnt)
{
	if (!FUNC0(hdev, HCI_UNCONFIGURED)) {
		/* ACL tx timeout must be longer than maximum
		 * link supervision timeout (40.9 seconds) */
		if (!cnt && FUNC2(jiffies, hdev->acl_last_tx +
				       HCI_ACL_TX_TIMEOUT))
			FUNC1(hdev, ACL_LINK);
	}
}