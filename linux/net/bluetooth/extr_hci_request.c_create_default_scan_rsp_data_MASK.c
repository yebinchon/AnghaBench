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
struct hci_dev {scalar_t__ appearance; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC2(struct hci_dev *hdev, u8 *ptr)
{
	u8 scan_rsp_len = 0;

	if (hdev->appearance) {
		scan_rsp_len = FUNC0(hdev, ptr, scan_rsp_len);
	}

	return FUNC1(hdev, ptr, scan_rsp_len);
}