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
union l2tp_val {int /*<<< orphan*/ * val16; int /*<<< orphan*/  val32; } ;
typedef  int u8 ;
typedef  void* u32 ;
typedef  int u16 ;
struct xt_l2tp_info {int dummy; } ;
struct xt_action_param {scalar_t__ fragoff; struct xt_l2tp_info* matchinfo; } ;
struct udphdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct l2tp_data {scalar_t__ type; int version; void* sid; void* tid; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int L2TP_HDR_L_BIT ; 
 int L2TP_HDR_T_BIT ; 
 int L2TP_HDR_VER ; 
 scalar_t__ XT_L2TP_TYPE_CONTROL ; 
 scalar_t__ XT_L2TP_TYPE_DATA ; 
 int FUNC0 (struct xt_l2tp_info const*,struct l2tp_data*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 union l2tp_val* FUNC3 (struct sk_buff const*,int,int,union l2tp_val*) ; 

__attribute__((used)) static bool FUNC4(const struct sk_buff *skb, struct xt_action_param *par, u16 thoff)
{
	const struct xt_l2tp_info *info = par->matchinfo;
	int uhlen = sizeof(struct udphdr);
	int offs = thoff + uhlen;
	union l2tp_val *lh;
	union l2tp_val lhbuf;
	u16 flags;
	struct l2tp_data data = { 0, };

	if (par->fragoff != 0)
		return false;

	/* Extract L2TP header fields. The flags in the first 16 bits
	 * tell us where the other fields are.
	 */
	lh = FUNC3(skb, offs, 2, &lhbuf);
	if (lh == NULL)
		return false;

	flags = FUNC2(lh->val16[0]);
	if (flags & L2TP_HDR_T_BIT)
		data.type = XT_L2TP_TYPE_CONTROL;
	else
		data.type = XT_L2TP_TYPE_DATA;
	data.version = (u8) flags & L2TP_HDR_VER;

	/* Now extract the L2TP tid/sid. These are in different places
	 * for L2TPv2 (rfc2661) and L2TPv3 (rfc3931). For L2TPv2, we
	 * must also check to see if the length field is present,
	 * since this affects the offsets into the packet of the
	 * tid/sid fields.
	 */
	if (data.version == 3) {
		lh = FUNC3(skb, offs + 4, 4, &lhbuf);
		if (lh == NULL)
			return false;
		if (data.type == XT_L2TP_TYPE_CONTROL)
			data.tid = FUNC1(lh->val32);
		else
			data.sid = FUNC1(lh->val32);
	} else if (data.version == 2) {
		if (flags & L2TP_HDR_L_BIT)
			offs += 2;
		lh = FUNC3(skb, offs + 2, 4, &lhbuf);
		if (lh == NULL)
			return false;
		data.tid = (u32) FUNC2(lh->val16[0]);
		data.sid = (u32) FUNC2(lh->val16[1]);
	} else
		return false;

	return FUNC0(info, &data);
}