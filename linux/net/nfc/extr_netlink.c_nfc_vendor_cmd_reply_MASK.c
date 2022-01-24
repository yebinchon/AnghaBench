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
struct sk_buff {scalar_t__ cb; } ;
struct nfc_dev {int /*<<< orphan*/  cur_cmd_info; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct sk_buff *skb)
{
	struct nfc_dev *dev = ((void **)skb->cb)[0];
	void *hdr = ((void **)skb->cb)[1];

	/* clear CB data for netlink core to own from now on */
	FUNC4(skb->cb, 0, sizeof(skb->cb));

	if (FUNC0(!dev->cur_cmd_info)) {
		FUNC3(skb);
		return -EINVAL;
	}

	FUNC1(skb, hdr);
	return FUNC2(skb, dev->cur_cmd_info);
}