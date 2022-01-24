#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfc_hci_dev {TYPE_1__* ops; int /*<<< orphan*/  llc; } ;
struct nfc_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct nfc_hci_dev*) ;} ;

/* Variables and functions */
 struct nfc_hci_dev* FUNC0 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_hci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_hci_dev*) ; 

__attribute__((used)) static int FUNC4(struct nfc_dev *nfc_dev)
{
	struct nfc_hci_dev *hdev = FUNC0(nfc_dev);

	FUNC2(hdev->llc);

	if (hdev->ops->close)
		hdev->ops->close(hdev);

	FUNC1(hdev);

	return 0;
}