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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ poll_req_portid; int /*<<< orphan*/  genl_data_mutex; } ;
struct nfc_dev {TYPE_1__ genl_data; int /*<<< orphan*/  dev; int /*<<< orphan*/  polling; } ;
struct genl_info {scalar_t__ snd_portid; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 size_t NFC_ATTR_DEVICE_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nfc_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_dev*) ; 
 int FUNC6 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, struct genl_info *info)
{
	struct nfc_dev *dev;
	int rc;
	u32 idx;

	if (!info->attrs[NFC_ATTR_DEVICE_INDEX])
		return -EINVAL;

	idx = FUNC7(info->attrs[NFC_ATTR_DEVICE_INDEX]);

	dev = FUNC4(idx);
	if (!dev)
		return -ENODEV;

	FUNC0(&dev->dev);

	if (!dev->polling) {
		FUNC1(&dev->dev);
		return -EINVAL;
	}

	FUNC1(&dev->dev);

	FUNC2(&dev->genl_data.genl_data_mutex);

	if (dev->genl_data.poll_req_portid != info->snd_portid) {
		rc = -EBUSY;
		goto out;
	}

	rc = FUNC6(dev);
	dev->genl_data.poll_req_portid = 0;

out:
	FUNC3(&dev->genl_data.genl_data_mutex);
	FUNC5(dev);
	return rc;
}