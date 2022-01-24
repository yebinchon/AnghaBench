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
 size_t NFC_ATTR_PROTOCOLS ; 
 size_t NFC_ATTR_TARGET_INDEX ; 
 int /*<<< orphan*/  NFC_TARGET_MODE_SLEEP ; 
 int FUNC0 (struct nfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfc_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct genl_info *info)
{
	struct nfc_dev *dev;
	u32 device_idx, target_idx, protocol;
	int rc;

	if (!info->attrs[NFC_ATTR_DEVICE_INDEX] ||
	    !info->attrs[NFC_ATTR_TARGET_INDEX] ||
	    !info->attrs[NFC_ATTR_PROTOCOLS])
		return -EINVAL;

	device_idx = FUNC4(info->attrs[NFC_ATTR_DEVICE_INDEX]);

	dev = FUNC2(device_idx);
	if (!dev)
		return -ENODEV;

	target_idx = FUNC4(info->attrs[NFC_ATTR_TARGET_INDEX]);
	protocol = FUNC4(info->attrs[NFC_ATTR_PROTOCOLS]);

	FUNC1(dev, target_idx, NFC_TARGET_MODE_SLEEP);
	rc = FUNC0(dev, target_idx, protocol);

	FUNC3(dev);
	return rc;
}