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
typedef  int u8 ;
struct hci_dev {int cur_adv_instance; int /*<<< orphan*/  adv_instance_cnt; scalar_t__ adv_instance_timeout; int /*<<< orphan*/  adv_instance_expire; int /*<<< orphan*/  name; } ;
struct adv_info {int /*<<< orphan*/  list; int /*<<< orphan*/  rpa_expired_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct adv_info* FUNC3 (struct hci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adv_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct hci_dev *hdev, u8 instance)
{
	struct adv_info *adv_instance;

	adv_instance = FUNC3(hdev, instance);
	if (!adv_instance)
		return -ENOENT;

	FUNC0("%s removing %dMR", hdev->name, instance);

	if (hdev->cur_adv_instance == instance) {
		if (hdev->adv_instance_timeout) {
			FUNC1(&hdev->adv_instance_expire);
			hdev->adv_instance_timeout = 0;
		}
		hdev->cur_adv_instance = 0x00;
	}

	FUNC2(&adv_instance->rpa_expired_cb);

	FUNC5(&adv_instance->list);
	FUNC4(adv_instance);

	hdev->adv_instance_cnt--;

	return 0;
}