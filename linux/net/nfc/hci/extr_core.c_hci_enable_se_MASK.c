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
typedef  int /*<<< orphan*/  u32 ;
struct nfc_hci_dev {TYPE_1__* ops; } ;
struct nfc_dev {int dummy; } ;
struct TYPE_2__ {int (* enable_se ) (struct nfc_hci_dev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct nfc_hci_dev* FUNC0 (struct nfc_dev*) ; 
 int FUNC1 (struct nfc_hci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct nfc_dev *nfc_dev, u32 se_idx)
{
	struct nfc_hci_dev *hdev = FUNC0(nfc_dev);

	if (hdev->ops->enable_se)
		return hdev->ops->enable_se(hdev, se_idx);

	return 0;
}