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
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t NFC_ATTR_DEVICE_INDEX ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC0 (struct sk_buff*,struct genl_info*) ; 
 int FUNC1 (struct sk_buff*,struct nfc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nfc_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct genl_info *info)
{
	struct sk_buff *msg;
	struct nfc_dev *dev;
	u32 idx;
	int rc = -ENOBUFS;

	if (!info->attrs[NFC_ATTR_DEVICE_INDEX])
		return -EINVAL;

	idx = FUNC4(info->attrs[NFC_ATTR_DEVICE_INDEX]);

	dev = FUNC2(idx);
	if (!dev)
		return -ENODEV;

	msg = FUNC6(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg) {
		rc = -ENOMEM;
		goto out_putdev;
	}

	rc = FUNC1(msg, dev, info->snd_portid, info->snd_seq,
				  NULL, 0);
	if (rc < 0)
		goto out_free;

	FUNC3(dev);

	return FUNC0(msg, info);

out_free:
	FUNC5(msg);
out_putdev:
	FUNC3(dev);
	return rc;
}