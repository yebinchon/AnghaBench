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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; } ;
struct batadv_dat_entry {int /*<<< orphan*/  vid; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  ip; scalar_t__ last_update; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_DAT_CACHE_HWADDRESS ; 
 int /*<<< orphan*/  BATADV_ATTR_DAT_CACHE_IP4ADDRESS ; 
 int /*<<< orphan*/  BATADV_ATTR_DAT_CACHE_VID ; 
 int /*<<< orphan*/  BATADV_ATTR_LAST_SEEN_MSECS ; 
 int /*<<< orphan*/  BATADV_CMD_GET_DAT_CACHE ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  batadv_netlink_family ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_callback*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC9(struct sk_buff *msg, u32 portid,
			    struct netlink_callback *cb,
			    struct batadv_dat_entry *dat_entry)
{
	int msecs;
	void *hdr;

	hdr = FUNC3(msg, portid, cb->nlh->nlmsg_seq,
			  &batadv_netlink_family, NLM_F_MULTI,
			  BATADV_CMD_GET_DAT_CACHE);
	if (!hdr)
		return -ENOBUFS;

	FUNC0(cb, hdr);

	msecs = FUNC4(jiffies - dat_entry->last_update);

	if (FUNC6(msg, BATADV_ATTR_DAT_CACHE_IP4ADDRESS,
			    dat_entry->ip) ||
	    FUNC5(msg, BATADV_ATTR_DAT_CACHE_HWADDRESS, ETH_ALEN,
		    dat_entry->mac_addr) ||
	    FUNC7(msg, BATADV_ATTR_DAT_CACHE_VID, dat_entry->vid) ||
	    FUNC8(msg, BATADV_ATTR_LAST_SEEN_MSECS, msecs)) {
		FUNC1(msg, hdr);
		return -EMSGSIZE;
	}

	FUNC2(msg, hdr);
	return 0;
}