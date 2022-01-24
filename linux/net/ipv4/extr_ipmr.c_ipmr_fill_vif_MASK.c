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
typedef  size_t u32 ;
struct vif_device {int /*<<< orphan*/  remote; int /*<<< orphan*/  local; int /*<<< orphan*/  pkt_out; int /*<<< orphan*/  pkt_in; int /*<<< orphan*/  bytes_out; int /*<<< orphan*/  bytes_in; int /*<<< orphan*/  flags; TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct mr_table {struct vif_device* vif_table; } ;
struct TYPE_2__ {size_t ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPMRA_VIF ; 
 int /*<<< orphan*/  IPMRA_VIFA_BYTES_IN ; 
 int /*<<< orphan*/  IPMRA_VIFA_BYTES_OUT ; 
 int /*<<< orphan*/  IPMRA_VIFA_FLAGS ; 
 int /*<<< orphan*/  IPMRA_VIFA_IFINDEX ; 
 int /*<<< orphan*/  IPMRA_VIFA_LOCAL_ADDR ; 
 int /*<<< orphan*/  IPMRA_VIFA_PACKETS_IN ; 
 int /*<<< orphan*/  IPMRA_VIFA_PACKETS_OUT ; 
 int /*<<< orphan*/  IPMRA_VIFA_PAD ; 
 int /*<<< orphan*/  IPMRA_VIFA_REMOTE_ADDR ; 
 int /*<<< orphan*/  IPMRA_VIFA_VIF_ID ; 
 int /*<<< orphan*/  FUNC0 (struct mr_table*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct mr_table *mrt, u32 vifid, struct sk_buff *skb)
{
	struct nlattr *vif_nest;
	struct vif_device *vif;

	/* if the VIF doesn't exist just continue */
	if (!FUNC0(mrt, vifid))
		return true;

	vif = &mrt->vif_table[vifid];
	vif_nest = FUNC3(skb, IPMRA_VIF);
	if (!vif_nest)
		return false;
	if (FUNC6(skb, IPMRA_VIFA_IFINDEX, vif->dev->ifindex) ||
	    FUNC6(skb, IPMRA_VIFA_VIF_ID, vifid) ||
	    FUNC5(skb, IPMRA_VIFA_FLAGS, vif->flags) ||
	    FUNC7(skb, IPMRA_VIFA_BYTES_IN, vif->bytes_in,
			      IPMRA_VIFA_PAD) ||
	    FUNC7(skb, IPMRA_VIFA_BYTES_OUT, vif->bytes_out,
			      IPMRA_VIFA_PAD) ||
	    FUNC7(skb, IPMRA_VIFA_PACKETS_IN, vif->pkt_in,
			      IPMRA_VIFA_PAD) ||
	    FUNC7(skb, IPMRA_VIFA_PACKETS_OUT, vif->pkt_out,
			      IPMRA_VIFA_PAD) ||
	    FUNC4(skb, IPMRA_VIFA_LOCAL_ADDR, vif->local) ||
	    FUNC4(skb, IPMRA_VIFA_REMOTE_ADDR, vif->remote)) {
		FUNC1(skb, vif_nest);
		return false;
	}
	FUNC2(skb, vif_nest);

	return true;
}