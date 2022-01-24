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
struct sk_buff {int dummy; } ;
struct nfc_se {int /*<<< orphan*/  type; } ;
struct nfc_dev {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NFC_ATTR_DEVICE_INDEX ; 
 int /*<<< orphan*/  NFC_ATTR_SE_INDEX ; 
 int /*<<< orphan*/  NFC_ATTR_SE_TYPE ; 
 int /*<<< orphan*/  NFC_EVENT_SE_CONNECTIVITY ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfc_se* FUNC3 (struct nfc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfc_genl_family ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct nfc_dev *dev, u8 se_idx)
{
	struct nfc_se *se;
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC7(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC2(msg, 0, 0, &nfc_genl_family, 0,
			  NFC_EVENT_SE_CONNECTIVITY);
	if (!hdr)
		goto free_msg;

	se = FUNC3(dev, se_idx);
	if (!se)
		goto free_msg;

	if (FUNC4(msg, NFC_ATTR_DEVICE_INDEX, dev->idx) ||
	    FUNC4(msg, NFC_ATTR_SE_INDEX, se_idx) ||
	    FUNC5(msg, NFC_ATTR_SE_TYPE, se->type))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	FUNC1(&nfc_genl_family, msg, 0, 0, GFP_KERNEL);

	return 0;

nla_put_failure:
free_msg:
	FUNC6(msg);
	return -EMSGSIZE;
}