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
typedef  int /*<<< orphan*/  firmware_name ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 size_t NFC_ATTR_DEVICE_INDEX ; 
 size_t NFC_ATTR_FIRMWARE_NAME ; 
 int /*<<< orphan*/  NFC_FIRMWARE_NAME_MAXSIZE ; 
 int FUNC0 (struct nfc_dev*,char*) ; 
 struct nfc_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct genl_info *info)
{
	struct nfc_dev *dev;
	int rc;
	u32 idx;
	char firmware_name[NFC_FIRMWARE_NAME_MAXSIZE + 1];

	if (!info->attrs[NFC_ATTR_DEVICE_INDEX])
		return -EINVAL;

	idx = FUNC3(info->attrs[NFC_ATTR_DEVICE_INDEX]);

	dev = FUNC1(idx);
	if (!dev)
		return -ENODEV;

	FUNC4(firmware_name, info->attrs[NFC_ATTR_FIRMWARE_NAME],
		    sizeof(firmware_name));

	rc = FUNC0(dev, firmware_name);

	FUNC2(dev);
	return rc;
}