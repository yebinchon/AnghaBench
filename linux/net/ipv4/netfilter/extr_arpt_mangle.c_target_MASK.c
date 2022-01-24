#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xt_action_param {struct arpt_mangle* targinfo; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/  tgt_ip; } ;
struct TYPE_3__ {int /*<<< orphan*/  src_ip; } ;
struct arpt_mangle {int flags; unsigned int target; TYPE_2__ u_t; int /*<<< orphan*/ * tgt_devaddr; TYPE_1__ u_s; int /*<<< orphan*/ * src_devaddr; } ;
struct arphdr {int ar_pln; int ar_hln; } ;

/* Variables and functions */
 int ARPT_DEV_ADDR_LEN_MAX ; 
 int ARPT_MANGLE_ADDR_LEN_MAX ; 
 int ARPT_MANGLE_SDEV ; 
 int ARPT_MANGLE_SIP ; 
 int ARPT_MANGLE_TDEV ; 
 int ARPT_MANGLE_TIP ; 
 unsigned int NF_DROP ; 
 struct arphdr* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (struct sk_buff*) ; 
 unsigned char* FUNC4 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int
FUNC5(struct sk_buff *skb, const struct xt_action_param *par)
{
	const struct arpt_mangle *mangle = par->targinfo;
	const struct arphdr *arp;
	unsigned char *arpptr;
	int pln, hln;

	if (FUNC2(skb, skb->len))
		return NF_DROP;

	arp = FUNC0(skb);
	arpptr = FUNC3(skb) + sizeof(*arp);
	pln = arp->ar_pln;
	hln = arp->ar_hln;
	/* We assume that pln and hln were checked in the match */
	if (mangle->flags & ARPT_MANGLE_SDEV) {
		if (ARPT_DEV_ADDR_LEN_MAX < hln ||
		   (arpptr + hln > FUNC4(skb)))
			return NF_DROP;
		FUNC1(arpptr, mangle->src_devaddr, hln);
	}
	arpptr += hln;
	if (mangle->flags & ARPT_MANGLE_SIP) {
		if (ARPT_MANGLE_ADDR_LEN_MAX < pln ||
		   (arpptr + pln > FUNC4(skb)))
			return NF_DROP;
		FUNC1(arpptr, &mangle->u_s.src_ip, pln);
	}
	arpptr += pln;
	if (mangle->flags & ARPT_MANGLE_TDEV) {
		if (ARPT_DEV_ADDR_LEN_MAX < hln ||
		   (arpptr + hln > FUNC4(skb)))
			return NF_DROP;
		FUNC1(arpptr, mangle->tgt_devaddr, hln);
	}
	arpptr += hln;
	if (mangle->flags & ARPT_MANGLE_TIP) {
		if (ARPT_MANGLE_ADDR_LEN_MAX < pln ||
		   (arpptr + pln > FUNC4(skb)))
			return NF_DROP;
		FUNC1(arpptr, &mangle->u_t.tgt_ip, pln);
	}
	return mangle->target;
}