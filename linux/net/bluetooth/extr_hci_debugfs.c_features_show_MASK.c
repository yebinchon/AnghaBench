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
typedef  size_t u8 ;
struct seq_file {struct hci_dev* private; } ;
struct hci_dev {size_t max_page; int /*<<< orphan*/  le_features; int /*<<< orphan*/ * features; } ;

/* Variables and functions */
 size_t HCI_MAX_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 scalar_t__ FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,size_t,...) ; 

__attribute__((used)) static int FUNC4(struct seq_file *f, void *ptr)
{
	struct hci_dev *hdev = f->private;
	u8 p;

	FUNC0(hdev);
	for (p = 0; p < HCI_MAX_PAGES && p <= hdev->max_page; p++)
		FUNC3(f, "%2u: %8ph\n", p, hdev->features[p]);
	if (FUNC2(hdev))
		FUNC3(f, "LE: %8ph\n", hdev->le_features);
	FUNC1(hdev);

	return 0;
}