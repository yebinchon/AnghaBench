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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ poll_req_portid; } ;
struct nfc_dev {int /*<<< orphan*/  idx; TYPE_1__ genl_data; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NFC_ATTR_DEVICE_INDEX ; 
 int /*<<< orphan*/  NFC_EVENT_TARGETS_FOUND ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfc_genl_family ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct nfc_dev *dev)
{
	struct sk_buff *msg;
	void *hdr;

	dev->genl_data.poll_req_portid = 0;

	msg = FUNC5(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC2(msg, 0, 0, &nfc_genl_family, 0,
			  NFC_EVENT_TARGETS_FOUND);
	if (!hdr)
		goto free_msg;

	if (FUNC3(msg, NFC_ATTR_DEVICE_INDEX, dev->idx))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	return FUNC1(&nfc_genl_family, msg, 0, 0, GFP_ATOMIC);

nla_put_failure:
free_msg:
	FUNC4(msg);
	return -EMSGSIZE;
}