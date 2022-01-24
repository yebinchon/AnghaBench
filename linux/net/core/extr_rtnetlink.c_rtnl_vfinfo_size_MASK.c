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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ifla_vf_vlan_info {int dummy; } ;
struct ifla_vf_vlan {int dummy; } ;
struct ifla_vf_tx_rate {int dummy; } ;
struct ifla_vf_trust {int dummy; } ;
struct ifla_vf_spoofchk {int dummy; } ;
struct ifla_vf_rss_query_en {int dummy; } ;
struct ifla_vf_rate {int dummy; } ;
struct ifla_vf_mac {int dummy; } ;
struct ifla_vf_link_state {int dummy; } ;
struct ifla_vf_broadcast {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int MAX_VLAN_LIST_LEN ; 
 int RTEXT_FILTER_VF ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(const struct net_device *dev,
				   u32 ext_filter_mask)
{
	if (dev->dev.parent && (ext_filter_mask & RTEXT_FILTER_VF)) {
		int num_vfs = FUNC0(dev->dev.parent);
		size_t size = FUNC1(0);
		size += num_vfs *
			(FUNC1(0) +
			 FUNC1(sizeof(struct ifla_vf_mac)) +
			 FUNC1(sizeof(struct ifla_vf_broadcast)) +
			 FUNC1(sizeof(struct ifla_vf_vlan)) +
			 FUNC1(0) + /* nest IFLA_VF_VLAN_LIST */
			 FUNC1(MAX_VLAN_LIST_LEN *
					sizeof(struct ifla_vf_vlan_info)) +
			 FUNC1(sizeof(struct ifla_vf_spoofchk)) +
			 FUNC1(sizeof(struct ifla_vf_tx_rate)) +
			 FUNC1(sizeof(struct ifla_vf_rate)) +
			 FUNC1(sizeof(struct ifla_vf_link_state)) +
			 FUNC1(sizeof(struct ifla_vf_rss_query_en)) +
			 FUNC1(0) + /* nest IFLA_VF_STATS */
			 /* IFLA_VF_STATS_RX_PACKETS */
			 FUNC2(sizeof(__u64)) +
			 /* IFLA_VF_STATS_TX_PACKETS */
			 FUNC2(sizeof(__u64)) +
			 /* IFLA_VF_STATS_RX_BYTES */
			 FUNC2(sizeof(__u64)) +
			 /* IFLA_VF_STATS_TX_BYTES */
			 FUNC2(sizeof(__u64)) +
			 /* IFLA_VF_STATS_BROADCAST */
			 FUNC2(sizeof(__u64)) +
			 /* IFLA_VF_STATS_MULTICAST */
			 FUNC2(sizeof(__u64)) +
			 /* IFLA_VF_STATS_RX_DROPPED */
			 FUNC2(sizeof(__u64)) +
			 /* IFLA_VF_STATS_TX_DROPPED */
			 FUNC2(sizeof(__u64)) +
			 FUNC1(sizeof(struct ifla_vf_trust)));
		return size;
	} else
		return 0;
}