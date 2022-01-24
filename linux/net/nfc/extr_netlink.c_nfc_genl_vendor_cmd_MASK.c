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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nfc_vendor_cmd {scalar_t__ vendor_id; scalar_t__ subcmd; int (* doit ) (struct nfc_dev*,int /*<<< orphan*/ *,size_t) ;} ;
struct nfc_dev {int n_vendor_cmds; struct genl_info* cur_cmd_info; struct nfc_vendor_cmd* vendor_cmds; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 size_t NFC_ATTR_DEVICE_INDEX ; 
 size_t NFC_ATTR_VENDOR_DATA ; 
 size_t NFC_ATTR_VENDOR_ID ; 
 size_t NFC_ATTR_VENDOR_SUBCMD ; 
 struct nfc_dev* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 size_t FUNC3 (scalar_t__) ; 
 int FUNC4 (struct nfc_dev*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
			       struct genl_info *info)
{
	struct nfc_dev *dev;
	struct nfc_vendor_cmd *cmd;
	u32 dev_idx, vid, subcmd;
	u8 *data;
	size_t data_len;
	int i, err;

	if (!info->attrs[NFC_ATTR_DEVICE_INDEX] ||
	    !info->attrs[NFC_ATTR_VENDOR_ID] ||
	    !info->attrs[NFC_ATTR_VENDOR_SUBCMD])
		return -EINVAL;

	dev_idx = FUNC2(info->attrs[NFC_ATTR_DEVICE_INDEX]);
	vid = FUNC2(info->attrs[NFC_ATTR_VENDOR_ID]);
	subcmd = FUNC2(info->attrs[NFC_ATTR_VENDOR_SUBCMD]);

	dev = FUNC0(dev_idx);
	if (!dev || !dev->vendor_cmds || !dev->n_vendor_cmds)
		return -ENODEV;

	if (info->attrs[NFC_ATTR_VENDOR_DATA]) {
		data = FUNC1(info->attrs[NFC_ATTR_VENDOR_DATA]);
		data_len = FUNC3(info->attrs[NFC_ATTR_VENDOR_DATA]);
		if (data_len == 0)
			return -EINVAL;
	} else {
		data = NULL;
		data_len = 0;
	}

	for (i = 0; i < dev->n_vendor_cmds; i++) {
		cmd = &dev->vendor_cmds[i];

		if (cmd->vendor_id != vid || cmd->subcmd != subcmd)
			continue;

		dev->cur_cmd_info = info;
		err = cmd->doit(dev, data, data_len);
		dev->cur_cmd_info = NULL;
		return err;
	}

	return -EOPNOTSUPP;
}