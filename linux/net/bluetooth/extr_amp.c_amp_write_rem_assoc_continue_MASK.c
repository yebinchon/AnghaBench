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
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hci_dev*,struct hci_conn*) ; 
 struct hci_conn* FUNC3 (struct hci_dev*,int /*<<< orphan*/ ) ; 

void FUNC4(struct hci_dev *hdev, u8 handle)
{
	struct hci_conn *hcon;

	FUNC0("%s phy handle 0x%2.2x", hdev->name, handle);

	hcon = FUNC3(hdev, handle);
	if (!hcon)
		return;

	/* Send A2MP create phylink rsp when all fragments are written */
	if (FUNC2(hdev, hcon))
		FUNC1(hdev, 0);
}