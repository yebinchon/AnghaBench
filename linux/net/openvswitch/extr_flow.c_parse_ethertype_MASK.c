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
struct sk_buff {int len; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_802_2 ; 
 scalar_t__ LLC_SAP_SNAP ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static __be16 FUNC5(struct sk_buff *skb)
{
	struct llc_snap_hdr {
		u8  dsap;  /* Always 0xAA */
		u8  ssap;  /* Always 0xAA */
		u8  ctrl;
		u8  oui[3];
		__be16 ethertype;
	};
	struct llc_snap_hdr *llc;
	__be16 proto;

	proto = *(__be16 *) skb->data;
	FUNC0(skb, sizeof(__be16));

	if (FUNC1(proto))
		return proto;

	if (skb->len < sizeof(struct llc_snap_hdr))
		return FUNC2(ETH_P_802_2);

	if (FUNC4(!FUNC3(skb, sizeof(struct llc_snap_hdr))))
		return FUNC2(0);

	llc = (struct llc_snap_hdr *) skb->data;
	if (llc->dsap != LLC_SAP_SNAP ||
	    llc->ssap != LLC_SAP_SNAP ||
	    (llc->oui[0] | llc->oui[1] | llc->oui[2]) != 0)
		return FUNC2(ETH_P_802_2);

	FUNC0(skb, sizeof(struct llc_snap_hdr));

	if (FUNC1(llc->ethertype))
		return llc->ethertype;

	return FUNC2(ETH_P_802_2);
}