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
struct batadv_orig_node {int /*<<< orphan*/  mcast_flags; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  orig; } ;
struct TYPE_2__ {int /*<<< orphan*/  nlmsg_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_ATTR_MCAST_FLAGS ; 
 int /*<<< orphan*/  BATADV_ATTR_ORIG_ADDRESS ; 
 int /*<<< orphan*/  BATADV_CMD_GET_MCAST_FLAGS ; 
 int /*<<< orphan*/  BATADV_ORIG_CAPA_HAS_MCAST ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  batadv_netlink_family ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_callback*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct sk_buff *msg, u32 portid,
			      struct netlink_callback *cb,
			      struct batadv_orig_node *orig_node)
{
	void *hdr;

	hdr = FUNC3(msg, portid, cb->nlh->nlmsg_seq,
			  &batadv_netlink_family, NLM_F_MULTI,
			  BATADV_CMD_GET_MCAST_FLAGS);
	if (!hdr)
		return -ENOBUFS;

	FUNC0(cb, hdr);

	if (FUNC4(msg, BATADV_ATTR_ORIG_ADDRESS, ETH_ALEN,
		    orig_node->orig)) {
		FUNC1(msg, hdr);
		return -EMSGSIZE;
	}

	if (FUNC6(BATADV_ORIG_CAPA_HAS_MCAST,
		     &orig_node->capabilities)) {
		if (FUNC5(msg, BATADV_ATTR_MCAST_FLAGS,
				orig_node->mcast_flags)) {
			FUNC1(msg, hdr);
			return -EMSGSIZE;
		}
	}

	FUNC2(msg, hdr);
	return 0;
}