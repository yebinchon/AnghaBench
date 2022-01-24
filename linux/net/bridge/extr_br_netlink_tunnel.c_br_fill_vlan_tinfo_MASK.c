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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_BRIDGE_VLAN_TUNNEL_FLAGS ; 
 int /*<<< orphan*/  IFLA_BRIDGE_VLAN_TUNNEL_ID ; 
 int /*<<< orphan*/  IFLA_BRIDGE_VLAN_TUNNEL_INFO ; 
 int /*<<< orphan*/  IFLA_BRIDGE_VLAN_TUNNEL_VID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, u16 vid,
			      __be64 tunnel_id, u16 flags)
{
	__be32 tid = FUNC6(tunnel_id);
	struct nlattr *tmap;

	tmap = FUNC3(skb, IFLA_BRIDGE_VLAN_TUNNEL_INFO);
	if (!tmap)
		return -EMSGSIZE;
	if (FUNC5(skb, IFLA_BRIDGE_VLAN_TUNNEL_ID,
			FUNC0(tid)))
		goto nla_put_failure;
	if (FUNC4(skb, IFLA_BRIDGE_VLAN_TUNNEL_VID,
			vid))
		goto nla_put_failure;
	if (FUNC4(skb, IFLA_BRIDGE_VLAN_TUNNEL_FLAGS,
			flags))
		goto nla_put_failure;
	FUNC2(skb, tmap);

	return 0;

nla_put_failure:
	FUNC1(skb, tmap);

	return -EMSGSIZE;
}