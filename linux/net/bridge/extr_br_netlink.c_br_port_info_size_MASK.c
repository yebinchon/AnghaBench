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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct ifla_bridge_id {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static inline size_t FUNC2(void)
{
	return FUNC0(1)	/* IFLA_BRPORT_STATE  */
		+ FUNC0(2)	/* IFLA_BRPORT_PRIORITY */
		+ FUNC0(4)	/* IFLA_BRPORT_COST */
		+ FUNC0(1)	/* IFLA_BRPORT_MODE */
		+ FUNC0(1)	/* IFLA_BRPORT_GUARD */
		+ FUNC0(1)	/* IFLA_BRPORT_PROTECT */
		+ FUNC0(1)	/* IFLA_BRPORT_FAST_LEAVE */
		+ FUNC0(1)	/* IFLA_BRPORT_MCAST_TO_UCAST */
		+ FUNC0(1)	/* IFLA_BRPORT_LEARNING */
		+ FUNC0(1)	/* IFLA_BRPORT_UNICAST_FLOOD */
		+ FUNC0(1)	/* IFLA_BRPORT_MCAST_FLOOD */
		+ FUNC0(1)	/* IFLA_BRPORT_BCAST_FLOOD */
		+ FUNC0(1)	/* IFLA_BRPORT_PROXYARP */
		+ FUNC0(1)	/* IFLA_BRPORT_PROXYARP_WIFI */
		+ FUNC0(1)	/* IFLA_BRPORT_VLAN_TUNNEL */
		+ FUNC0(1)	/* IFLA_BRPORT_NEIGH_SUPPRESS */
		+ FUNC0(1)	/* IFLA_BRPORT_ISOLATED */
		+ FUNC0(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_ROOT_ID */
		+ FUNC0(sizeof(struct ifla_bridge_id))	/* IFLA_BRPORT_BRIDGE_ID */
		+ FUNC0(sizeof(u16))	/* IFLA_BRPORT_DESIGNATED_PORT */
		+ FUNC0(sizeof(u16))	/* IFLA_BRPORT_DESIGNATED_COST */
		+ FUNC0(sizeof(u16))	/* IFLA_BRPORT_ID */
		+ FUNC0(sizeof(u16))	/* IFLA_BRPORT_NO */
		+ FUNC0(sizeof(u8))	/* IFLA_BRPORT_TOPOLOGY_CHANGE_ACK */
		+ FUNC0(sizeof(u8))	/* IFLA_BRPORT_CONFIG_PENDING */
		+ FUNC1(sizeof(u64)) /* IFLA_BRPORT_MESSAGE_AGE_TIMER */
		+ FUNC1(sizeof(u64)) /* IFLA_BRPORT_FORWARD_DELAY_TIMER */
		+ FUNC1(sizeof(u64)) /* IFLA_BRPORT_HOLD_TIMER */
#ifdef CONFIG_BRIDGE_IGMP_SNOOPING
		+ nla_total_size(sizeof(u8))	/* IFLA_BRPORT_MULTICAST_ROUTER */
#endif
		+ FUNC0(sizeof(u16))	/* IFLA_BRPORT_GROUP_FWD_MASK */
		+ 0;
}