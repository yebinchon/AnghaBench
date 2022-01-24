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
typedef  int uint32_t ;
struct hci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_BONDABLE ; 
 int /*<<< orphan*/  HCI_LIMITED_PRIVACY ; 
 int /*<<< orphan*/  HCI_PRIVACY ; 
 int MGMT_ADV_FLAG_DISCOV ; 
 scalar_t__ FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct hci_dev *hdev, uint32_t flags)
{
	/* If privacy is not enabled don't use RPA */
	if (!FUNC0(hdev, HCI_PRIVACY))
		return false;

	/* If basic privacy mode is enabled use RPA */
	if (!FUNC0(hdev, HCI_LIMITED_PRIVACY))
		return true;

	/* If limited privacy mode is enabled don't use RPA if we're
	 * both discoverable and bondable.
	 */
	if ((flags & MGMT_ADV_FLAG_DISCOV) &&
	    FUNC0(hdev, HCI_BONDABLE))
		return false;

	/* We're neither bondable nor discoverable in the limited
	 * privacy mode, therefore use RPA.
	 */
	return true;
}