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
struct xt_action_param {struct ebt_vlan_info* matchinfo; } ;
struct vlan_hdr {unsigned char h_vlan_encapsulated_proto; int /*<<< orphan*/  h_vlan_TCI; } ;
struct sk_buff {unsigned char protocol; } ;
struct ebt_vlan_info {int dummy; } ;
typedef  int /*<<< orphan*/  _frame ;
typedef  unsigned char __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  EBT_VLAN_ENCAP ; 
 int /*<<< orphan*/  EBT_VLAN_ID ; 
 int /*<<< orphan*/  EBT_VLAN_PRIO ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned short VLAN_VID_MASK ; 
 unsigned short FUNC2 (int /*<<< orphan*/ ) ; 
 struct vlan_hdr* FUNC3 (struct sk_buff const*,int /*<<< orphan*/ ,int,struct vlan_hdr*) ; 
 unsigned short FUNC4 (struct sk_buff const*) ; 
 scalar_t__ FUNC5 (struct sk_buff const*) ; 

__attribute__((used)) static bool
FUNC6(const struct sk_buff *skb, struct xt_action_param *par)
{
	const struct ebt_vlan_info *info = par->matchinfo;

	unsigned short TCI;	/* Whole TCI, given from parsed frame */
	unsigned short id;	/* VLAN ID, given from frame TCI */
	unsigned char prio;	/* user_priority, given from frame TCI */
	/* VLAN encapsulated Type/Length field, given from orig frame */
	__be16 encap;

	if (FUNC5(skb)) {
		TCI = FUNC4(skb);
		encap = skb->protocol;
	} else {
		const struct vlan_hdr *fp;
		struct vlan_hdr _frame;

		fp = FUNC3(skb, 0, sizeof(_frame), &_frame);
		if (fp == NULL)
			return false;

		TCI = FUNC2(fp->h_vlan_TCI);
		encap = fp->h_vlan_encapsulated_proto;
	}

	/* Tag Control Information (TCI) consists of the following elements:
	 * - User_priority. The user_priority field is three bits in length,
	 * interpreted as a binary number.
	 * - Canonical Format Indicator (CFI). The Canonical Format Indicator
	 * (CFI) is a single bit flag value. Currently ignored.
	 * - VLAN Identifier (VID). The VID is encoded as
	 * an unsigned binary number.
	 */
	id = TCI & VLAN_VID_MASK;
	prio = (TCI >> 13) & 0x7;

	/* Checking VLAN Identifier (VID) */
	if (FUNC1(EBT_VLAN_ID))
		FUNC0(id, EBT_VLAN_ID);

	/* Checking user_priority */
	if (FUNC1(EBT_VLAN_PRIO))
		FUNC0(prio, EBT_VLAN_PRIO);

	/* Checking Encapsulated Proto (Length/Type) field */
	if (FUNC1(EBT_VLAN_ENCAP))
		FUNC0(encap, EBT_VLAN_ENCAP);

	return true;
}