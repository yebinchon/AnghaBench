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
struct sk_buff {int dummy; } ;
struct dn_skb_cb {int rt_flags; int nsp_flags; } ;

/* Variables and functions */
 int DN_RT_F_RTS ; 
 struct dn_skb_cb* FUNC0 (struct sk_buff*) ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  NSP_DISCCONF ; 
 int /*<<< orphan*/  NSP_DISCINIT ; 
 unsigned short NSP_REASON_OK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, unsigned short reason)
{
	struct dn_skb_cb *cb = FUNC0(skb);
	int ret = NET_RX_DROP;

	/* Must not reply to returned packets */
	if (cb->rt_flags & DN_RT_F_RTS)
		goto out;

	if ((reason != NSP_REASON_OK) && ((cb->nsp_flags & 0x0c) == 0x08)) {
		switch (cb->nsp_flags & 0x70) {
		case 0x10:
		case 0x60: /* (Retransmitted) Connect Init */
			FUNC1(skb, NSP_DISCINIT, reason);
			ret = NET_RX_SUCCESS;
			break;
		case 0x20: /* Connect Confirm */
			FUNC1(skb, NSP_DISCCONF, reason);
			ret = NET_RX_SUCCESS;
			break;
		}
	}

out:
	FUNC2(skb);
	return ret;
}