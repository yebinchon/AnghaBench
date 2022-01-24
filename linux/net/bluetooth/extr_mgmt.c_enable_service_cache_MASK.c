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
struct hci_dev {int /*<<< orphan*/  service_cache; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_TIMEOUT ; 
 int /*<<< orphan*/  HCI_SERVICE_CACHE ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct hci_dev *hdev)
{
	if (!FUNC1(hdev))
		return false;

	if (!FUNC0(hdev, HCI_SERVICE_CACHE)) {
		FUNC2(hdev->workqueue, &hdev->service_cache,
				   CACHE_TIMEOUT);
		return true;
	}

	return false;
}