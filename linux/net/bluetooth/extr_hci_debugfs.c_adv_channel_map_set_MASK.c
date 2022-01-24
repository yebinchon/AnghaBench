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
typedef  int u64 ;
struct hci_dev {int le_adv_channel_map; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 

__attribute__((used)) static int FUNC2(void *data, u64 val)
{
	struct hci_dev *hdev = data;

	if (val < 0x01 || val > 0x07)
		return -EINVAL;

	FUNC0(hdev);
	hdev->le_adv_channel_map = val;
	FUNC1(hdev);

	return 0;
}