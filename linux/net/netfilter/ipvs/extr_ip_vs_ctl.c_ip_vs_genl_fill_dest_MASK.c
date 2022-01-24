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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_vs_kstats {int dummy; } ;
struct ip_vs_dest {int u_threshold; int l_threshold; int /*<<< orphan*/  stats; int /*<<< orphan*/  af; int /*<<< orphan*/  persistconns; int /*<<< orphan*/  inactconns; int /*<<< orphan*/  activeconns; int /*<<< orphan*/  tun_flags; int /*<<< orphan*/  tun_port; int /*<<< orphan*/  tun_type; int /*<<< orphan*/  weight; int /*<<< orphan*/  conn_flags; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPVS_CMD_ATTR_DEST ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_ACTIVE_CONNS ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_ADDR ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_ADDR_FAMILY ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_FWD_METHOD ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_INACT_CONNS ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_L_THRESH ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_PERSIST_CONNS ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_PORT ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_STATS ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_STATS64 ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_TUN_FLAGS ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_TUN_PORT ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_TUN_TYPE ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_U_THRESH ; 
 int /*<<< orphan*/  IPVS_DEST_ATTR_WEIGHT ; 
 int IP_VS_CONN_F_FWD_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_kstats*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,struct ip_vs_kstats*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,struct ip_vs_kstats*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct ip_vs_dest *dest)
{
	struct nlattr *nl_dest;
	struct ip_vs_kstats kstats;

	nl_dest = FUNC6(skb, IPVS_CMD_ATTR_DEST);
	if (!nl_dest)
		return -EMSGSIZE;

	if (FUNC7(skb, IPVS_DEST_ATTR_ADDR, sizeof(dest->addr), &dest->addr) ||
	    FUNC8(skb, IPVS_DEST_ATTR_PORT, dest->port) ||
	    FUNC10(skb, IPVS_DEST_ATTR_FWD_METHOD,
			(FUNC0(&dest->conn_flags) &
			 IP_VS_CONN_F_FWD_MASK)) ||
	    FUNC10(skb, IPVS_DEST_ATTR_WEIGHT,
			FUNC0(&dest->weight)) ||
	    FUNC11(skb, IPVS_DEST_ATTR_TUN_TYPE,
		       dest->tun_type) ||
	    FUNC8(skb, IPVS_DEST_ATTR_TUN_PORT,
			 dest->tun_port) ||
	    FUNC9(skb, IPVS_DEST_ATTR_TUN_FLAGS,
			dest->tun_flags) ||
	    FUNC10(skb, IPVS_DEST_ATTR_U_THRESH, dest->u_threshold) ||
	    FUNC10(skb, IPVS_DEST_ATTR_L_THRESH, dest->l_threshold) ||
	    FUNC10(skb, IPVS_DEST_ATTR_ACTIVE_CONNS,
			FUNC0(&dest->activeconns)) ||
	    FUNC10(skb, IPVS_DEST_ATTR_INACT_CONNS,
			FUNC0(&dest->inactconns)) ||
	    FUNC10(skb, IPVS_DEST_ATTR_PERSIST_CONNS,
			FUNC0(&dest->persistconns)) ||
	    FUNC9(skb, IPVS_DEST_ATTR_ADDR_FAMILY, dest->af))
		goto nla_put_failure;
	FUNC1(&kstats, &dest->stats);
	if (FUNC2(skb, IPVS_DEST_ATTR_STATS, &kstats))
		goto nla_put_failure;
	if (FUNC3(skb, IPVS_DEST_ATTR_STATS64, &kstats))
		goto nla_put_failure;

	FUNC5(skb, nl_dest);

	return 0;

nla_put_failure:
	FUNC4(skb, nl_dest);
	return -EMSGSIZE;
}