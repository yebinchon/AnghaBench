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
struct nfc_llcp_local {int dummy; } ;
struct nfc_dev {int /*<<< orphan*/  dev; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NFC_ATTR_DEVICE_INDEX ; 
 size_t NFC_ATTR_FIRMWARE_NAME ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff*,struct genl_info*) ; 
 int FUNC3 (struct sk_buff*,struct nfc_llcp_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfc_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct nfc_llcp_local* FUNC5 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 struct sk_buff* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct genl_info *info)
{
	struct nfc_dev *dev;
	struct nfc_llcp_local *local;
	int rc = 0;
	struct sk_buff *msg = NULL;
	u32 idx;

	if (!info->attrs[NFC_ATTR_DEVICE_INDEX] ||
	    !info->attrs[NFC_ATTR_FIRMWARE_NAME])
		return -EINVAL;

	idx = FUNC7(info->attrs[NFC_ATTR_DEVICE_INDEX]);

	dev = FUNC4(idx);
	if (!dev)
		return -ENODEV;

	FUNC0(&dev->dev);

	local = FUNC5(dev);
	if (!local) {
		rc = -ENODEV;
		goto exit;
	}

	msg = FUNC9(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		rc = -ENOMEM;
		goto exit;
	}

	rc = FUNC3(msg, local, info->snd_portid, info->snd_seq);

exit:
	FUNC1(&dev->dev);

	FUNC6(dev);

	if (rc < 0) {
		if (msg)
			FUNC8(msg);

		return rc;
	}

	return FUNC2(msg, info);
}