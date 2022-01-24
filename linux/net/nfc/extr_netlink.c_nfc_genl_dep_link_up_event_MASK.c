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
struct sk_buff {int dummy; } ;
struct nfc_dev {int dep_link_up; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NFC_ATTR_COMM_MODE ; 
 int /*<<< orphan*/  NFC_ATTR_DEVICE_INDEX ; 
 int /*<<< orphan*/  NFC_ATTR_RF_MODE ; 
 int /*<<< orphan*/  NFC_ATTR_TARGET_INDEX ; 
 int /*<<< orphan*/  NFC_CMD_DEP_LINK_UP ; 
 scalar_t__ NFC_RF_INITIATOR ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfc_genl_family ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int FUNC8(struct nfc_dev *dev, u32 target_idx,
			       u8 comm_mode, u8 rf_mode)
{
	struct sk_buff *msg;
	void *hdr;

	FUNC7("DEP link is up\n");

	msg = FUNC6(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC2(msg, 0, 0, &nfc_genl_family, 0, NFC_CMD_DEP_LINK_UP);
	if (!hdr)
		goto free_msg;

	if (FUNC3(msg, NFC_ATTR_DEVICE_INDEX, dev->idx))
		goto nla_put_failure;
	if (rf_mode == NFC_RF_INITIATOR &&
	    FUNC3(msg, NFC_ATTR_TARGET_INDEX, target_idx))
		goto nla_put_failure;
	if (FUNC4(msg, NFC_ATTR_COMM_MODE, comm_mode) ||
	    FUNC4(msg, NFC_ATTR_RF_MODE, rf_mode))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	dev->dep_link_up = true;

	FUNC1(&nfc_genl_family, msg, 0, 0, GFP_ATOMIC);

	return 0;

nla_put_failure:
free_msg:
	FUNC5(msg);
	return -EMSGSIZE;
}