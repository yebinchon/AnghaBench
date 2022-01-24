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
struct hci_dev {int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  static_addr; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_LE_DEV_PUBLIC ; 
 int /*<<< orphan*/  ADDR_LE_DEV_RANDOM ; 
 int /*<<< orphan*/  BDADDR_ANY ; 
 int /*<<< orphan*/  HCI_BREDR_ENABLED ; 
 int /*<<< orphan*/  HCI_FORCE_STATIC_ADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 

void FUNC3(struct hci_dev *hdev, bdaddr_t *bdaddr,
			       u8 *bdaddr_type)
{
	if (FUNC2(hdev, HCI_FORCE_STATIC_ADDR) ||
	    !FUNC0(&hdev->bdaddr, BDADDR_ANY) ||
	    (!FUNC2(hdev, HCI_BREDR_ENABLED) &&
	     FUNC0(&hdev->static_addr, BDADDR_ANY))) {
		FUNC1(bdaddr, &hdev->static_addr);
		*bdaddr_type = ADDR_LE_DEV_RANDOM;
	} else {
		FUNC1(bdaddr, &hdev->bdaddr);
		*bdaddr_type = ADDR_LE_DEV_PUBLIC;
	}
}