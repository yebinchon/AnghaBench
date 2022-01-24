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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nfc_dev {int dummy; } ;
struct nci_dev {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  se_io_cb_t ;
struct TYPE_2__ {int (* se_io ) (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,void*) ;} ;

/* Variables and functions */
 struct nci_dev* FUNC0 (struct nfc_dev*) ; 
 int FUNC1 (struct nci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC2(struct nfc_dev *nfc_dev, u32 se_idx,
		     u8 *apdu, size_t apdu_length,
		     se_io_cb_t cb, void *cb_context)
{
	struct nci_dev *ndev = FUNC0(nfc_dev);

	if (ndev->ops->se_io)
		return ndev->ops->se_io(ndev, se_idx, apdu,
				apdu_length, cb, cb_context);

	return 0;
}