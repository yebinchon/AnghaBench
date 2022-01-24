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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct batadv_tt_orig_list_entry {int flags; int /*<<< orphan*/  ttvn; TYPE_2__* orig_node; } ;
struct batadv_tt_common_entry {int flags; int /*<<< orphan*/  vid; int /*<<< orphan*/  addr; } ;
struct TYPE_3__ {int crc; } ;
struct batadv_orig_node_vlan {TYPE_1__ tt; } ;
struct TYPE_4__ {int /*<<< orphan*/  orig; int /*<<< orphan*/  last_ttvn; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_FLAG_BEST ; 
 int /*<<< orphan*/  BATADV_ATTR_ORIG_ADDRESS ; 
 int /*<<< orphan*/  BATADV_ATTR_TT_ADDRESS ; 
 int /*<<< orphan*/  BATADV_ATTR_TT_CRC32 ; 
 int /*<<< orphan*/  BATADV_ATTR_TT_FLAGS ; 
 int /*<<< orphan*/  BATADV_ATTR_TT_LAST_TTVN ; 
 int /*<<< orphan*/  BATADV_ATTR_TT_TTVN ; 
 int /*<<< orphan*/  BATADV_ATTR_TT_VID ; 
 int /*<<< orphan*/  BATADV_CMD_GET_TRANSTABLE_GLOBAL ; 
 int BATADV_TT_SYNC_MASK ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  batadv_netlink_family ; 
 struct batadv_orig_node_vlan* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_orig_node_vlan*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,void*) ; 
 void* FUNC5 (struct sk_buff*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct sk_buff *msg, u32 portid, u32 seq,
			       struct batadv_tt_common_entry *common,
			       struct batadv_tt_orig_list_entry *orig,
			       bool best)
{
	u16 flags = (common->flags & (~BATADV_TT_SYNC_MASK)) | orig->flags;
	void *hdr;
	struct batadv_orig_node_vlan *vlan;
	u8 last_ttvn;
	u32 crc;

	vlan = FUNC1(orig->orig_node,
					 common->vid);
	if (!vlan)
		return 0;

	crc = vlan->tt.crc;

	FUNC2(vlan);

	hdr = FUNC5(msg, portid, seq, &batadv_netlink_family,
			  NLM_F_MULTI,
			  BATADV_CMD_GET_TRANSTABLE_GLOBAL);
	if (!hdr)
		return -ENOBUFS;

	last_ttvn = FUNC0(&orig->orig_node->last_ttvn);

	if (FUNC6(msg, BATADV_ATTR_TT_ADDRESS, ETH_ALEN, common->addr) ||
	    FUNC6(msg, BATADV_ATTR_ORIG_ADDRESS, ETH_ALEN,
		    orig->orig_node->orig) ||
	    FUNC10(msg, BATADV_ATTR_TT_TTVN, orig->ttvn) ||
	    FUNC10(msg, BATADV_ATTR_TT_LAST_TTVN, last_ttvn) ||
	    FUNC9(msg, BATADV_ATTR_TT_CRC32, crc) ||
	    FUNC8(msg, BATADV_ATTR_TT_VID, common->vid) ||
	    FUNC9(msg, BATADV_ATTR_TT_FLAGS, flags))
		goto nla_put_failure;

	if (best && FUNC7(msg, BATADV_ATTR_FLAG_BEST))
		goto nla_put_failure;

	FUNC4(msg, hdr);
	return 0;

 nla_put_failure:
	FUNC3(msg, hdr);
	return -EMSGSIZE;
}