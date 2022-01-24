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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct nfc_llcp_local {int /*<<< orphan*/  miux; scalar_t__ rw; void* lto; } ;
struct nfc_dev {int /*<<< orphan*/  dev; scalar_t__ dep_link_up; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ LLCP_MAX_MIUX ; 
 scalar_t__ LLCP_MAX_RW ; 
 size_t NFC_ATTR_DEVICE_INDEX ; 
 size_t NFC_ATTR_LLC_PARAM_LTO ; 
 size_t NFC_ATTR_LLC_PARAM_MIUX ; 
 size_t NFC_ATTR_LLC_PARAM_RW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nfc_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct nfc_llcp_local* FUNC4 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfc_dev*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 void* FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct genl_info *info)
{
	struct nfc_dev *dev;
	struct nfc_llcp_local *local;
	u8 rw = 0;
	u16 miux = 0;
	u32 idx;
	int rc = 0;

	if (!info->attrs[NFC_ATTR_DEVICE_INDEX] ||
	    (!info->attrs[NFC_ATTR_LLC_PARAM_LTO] &&
	     !info->attrs[NFC_ATTR_LLC_PARAM_RW] &&
	     !info->attrs[NFC_ATTR_LLC_PARAM_MIUX]))
		return -EINVAL;

	if (info->attrs[NFC_ATTR_LLC_PARAM_RW]) {
		rw = FUNC8(info->attrs[NFC_ATTR_LLC_PARAM_RW]);

		if (rw > LLCP_MAX_RW)
			return -EINVAL;
	}

	if (info->attrs[NFC_ATTR_LLC_PARAM_MIUX]) {
		miux = FUNC6(info->attrs[NFC_ATTR_LLC_PARAM_MIUX]);

		if (miux > LLCP_MAX_MIUX)
			return -EINVAL;
	}

	idx = FUNC7(info->attrs[NFC_ATTR_DEVICE_INDEX]);

	dev = FUNC3(idx);
	if (!dev)
		return -ENODEV;

	FUNC1(&dev->dev);

	local = FUNC4(dev);
	if (!local) {
		rc = -ENODEV;
		goto exit;
	}

	if (info->attrs[NFC_ATTR_LLC_PARAM_LTO]) {
		if (dev->dep_link_up) {
			rc = -EINPROGRESS;
			goto exit;
		}

		local->lto = FUNC8(info->attrs[NFC_ATTR_LLC_PARAM_LTO]);
	}

	if (info->attrs[NFC_ATTR_LLC_PARAM_RW])
		local->rw = rw;

	if (info->attrs[NFC_ATTR_LLC_PARAM_MIUX])
		local->miux = FUNC0(miux);

exit:
	FUNC2(&dev->dev);

	FUNC5(dev);

	return rc;
}