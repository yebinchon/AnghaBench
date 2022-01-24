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
struct sock {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  rpa_expired; int /*<<< orphan*/  service_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_BONDABLE ; 
 int /*<<< orphan*/  HCI_MGMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpa_expired ; 
 int /*<<< orphan*/  service_cache_off ; 

__attribute__((used)) static void FUNC3(struct sock *sk, struct hci_dev *hdev)
{
	if (FUNC2(hdev, HCI_MGMT))
		return;

	FUNC0(&hdev->service_cache, service_cache_off);
	FUNC0(&hdev->rpa_expired, rpa_expired);

	/* Non-mgmt controlled devices get this bit set
	 * implicitly so that pairing works for them, however
	 * for mgmt we require user-space to explicitly enable
	 * it
	 */
	FUNC1(hdev, HCI_BONDABLE);
}