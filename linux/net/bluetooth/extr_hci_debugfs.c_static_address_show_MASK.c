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
struct seq_file {struct hci_dev* private; } ;
struct hci_dev {int /*<<< orphan*/  static_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct seq_file *f, void *p)
{
	struct hci_dev *hdev = f->private;

	FUNC0(hdev);
	FUNC2(f, "%pMR\n", &hdev->static_addr);
	FUNC1(hdev);

	return 0;
}