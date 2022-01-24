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
struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ovs_tunnel_info {scalar_t__ tun_dst; } ;
struct nlattr {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ OVS_KEY_ATTR_TUNNEL_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 struct ovs_tunnel_info* FUNC1 (struct nlattr const*) ; 
 scalar_t__ FUNC2 (struct nlattr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct dst_entry*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb,
			      struct sw_flow_key *flow_key,
			      const struct nlattr *a)
{
	/* Only tunnel set execution is supported without a mask. */
	if (FUNC2(a) == OVS_KEY_ATTR_TUNNEL_INFO) {
		struct ovs_tunnel_info *tun = FUNC1(a);

		FUNC3(skb);
		FUNC0((struct dst_entry *)tun->tun_dst);
		FUNC4(skb, (struct dst_entry *)tun->tun_dst);
		return 0;
	}

	return -EINVAL;
}