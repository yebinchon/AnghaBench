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
struct nfc_hci_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nfc_hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct nfc_hci_dev *hdev)
{
	int r;

	FUNC2("\n");

	r = FUNC0(hdev);
	if (r < 0)
		return r;

	FUNC1(hdev);

	return 0;
}