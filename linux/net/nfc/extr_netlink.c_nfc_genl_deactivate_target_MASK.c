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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct genl_info {int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t NFC_ATTR_DEVICE_INDEX ; 
 size_t NFC_ATTR_TARGET_INDEX ; 
 int /*<<< orphan*/  NFC_TARGET_MODE_SLEEP ; 
 int FUNC0 (struct nfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfc_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
				      struct genl_info *info)
{
	struct nfc_dev *dev;
	u32 device_idx, target_idx;
	int rc;

	if (!info->attrs[NFC_ATTR_DEVICE_INDEX] ||
	    !info->attrs[NFC_ATTR_TARGET_INDEX])
		return -EINVAL;

	device_idx = FUNC3(info->attrs[NFC_ATTR_DEVICE_INDEX]);

	dev = FUNC1(device_idx);
	if (!dev)
		return -ENODEV;

	target_idx = FUNC3(info->attrs[NFC_ATTR_TARGET_INDEX]);

	rc = FUNC0(dev, target_idx, NFC_TARGET_MODE_SLEEP);

	FUNC2(dev);
	return rc;
}