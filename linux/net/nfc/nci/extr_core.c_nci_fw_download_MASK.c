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
struct nfc_dev {int dummy; } ;
struct nci_dev {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* fw_download ) (struct nci_dev*,char const*) ;} ;

/* Variables and functions */
 int ENOTSUPP ; 
 struct nci_dev* FUNC0 (struct nfc_dev*) ; 
 int FUNC1 (struct nci_dev*,char const*) ; 

__attribute__((used)) static int FUNC2(struct nfc_dev *nfc_dev, const char *firmware_name)
{
	struct nci_dev *ndev = FUNC0(nfc_dev);

	if (!ndev->ops->fw_download)
		return -ENOTSUPP;

	return ndev->ops->fw_download(ndev, firmware_name);
}