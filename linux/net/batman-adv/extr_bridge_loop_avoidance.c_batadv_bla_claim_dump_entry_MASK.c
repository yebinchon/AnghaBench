#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_2__* nlh; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct batadv_bla_claim {TYPE_3__* backbone_gw; int /*<<< orphan*/  vid; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  orig; int /*<<< orphan*/  crc_lock; int /*<<< orphan*/  crc; } ;
struct TYPE_5__ {int /*<<< orphan*/  nlmsg_seq; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_BLA_ADDRESS ; 
 int /*<<< orphan*/  BATADV_ATTR_BLA_BACKBONE ; 
 int /*<<< orphan*/  BATADV_ATTR_BLA_CRC ; 
 int /*<<< orphan*/  BATADV_ATTR_BLA_OWN ; 
 int /*<<< orphan*/  BATADV_ATTR_BLA_VID ; 
 int /*<<< orphan*/  BATADV_CMD_GET_BLA_CLAIM ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  batadv_netlink_family ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_callback*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 void* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct sk_buff *msg, u32 portid,
			    struct netlink_callback *cb,
			    struct batadv_hard_iface *primary_if,
			    struct batadv_bla_claim *claim)
{
	u8 *primary_addr = primary_if->net_dev->dev_addr;
	u16 backbone_crc;
	bool is_own;
	void *hdr;
	int ret = -EINVAL;

	hdr = FUNC4(msg, portid, cb->nlh->nlmsg_seq,
			  &batadv_netlink_family, NLM_F_MULTI,
			  BATADV_CMD_GET_BLA_CLAIM);
	if (!hdr) {
		ret = -ENOBUFS;
		goto out;
	}

	FUNC1(cb, hdr);

	is_own = FUNC0(claim->backbone_gw->orig,
				    primary_addr);

	FUNC8(&claim->backbone_gw->crc_lock);
	backbone_crc = claim->backbone_gw->crc;
	FUNC9(&claim->backbone_gw->crc_lock);

	if (is_own)
		if (FUNC6(msg, BATADV_ATTR_BLA_OWN)) {
			FUNC2(msg, hdr);
			goto out;
		}

	if (FUNC5(msg, BATADV_ATTR_BLA_ADDRESS, ETH_ALEN, claim->addr) ||
	    FUNC7(msg, BATADV_ATTR_BLA_VID, claim->vid) ||
	    FUNC5(msg, BATADV_ATTR_BLA_BACKBONE, ETH_ALEN,
		    claim->backbone_gw->orig) ||
	    FUNC7(msg, BATADV_ATTR_BLA_CRC,
			backbone_crc)) {
		FUNC2(msg, hdr);
		goto out;
	}

	FUNC3(msg, hdr);
	ret = 0;

out:
	return ret;
}