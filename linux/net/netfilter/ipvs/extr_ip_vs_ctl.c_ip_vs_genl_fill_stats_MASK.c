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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_vs_kstats {scalar_t__ outbps; scalar_t__ inbps; scalar_t__ outpps; scalar_t__ inpps; scalar_t__ cps; int /*<<< orphan*/  outbytes; int /*<<< orphan*/  inbytes; scalar_t__ outpkts; scalar_t__ inpkts; scalar_t__ conns; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_CONNS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_CPS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_INBPS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_INBYTES ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_INPKTS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_INPPS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_OUTBPS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_OUTBYTES ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_OUTPKTS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_OUTPPS ; 
 int /*<<< orphan*/  IPVS_STATS_ATTR_PAD ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, int container_type,
				 struct ip_vs_kstats *kstats)
{
	struct nlattr *nl_stats = FUNC2(skb, container_type);

	if (!nl_stats)
		return -EMSGSIZE;

	if (FUNC3(skb, IPVS_STATS_ATTR_CONNS, (u32)kstats->conns) ||
	    FUNC3(skb, IPVS_STATS_ATTR_INPKTS, (u32)kstats->inpkts) ||
	    FUNC3(skb, IPVS_STATS_ATTR_OUTPKTS, (u32)kstats->outpkts) ||
	    FUNC4(skb, IPVS_STATS_ATTR_INBYTES, kstats->inbytes,
			      IPVS_STATS_ATTR_PAD) ||
	    FUNC4(skb, IPVS_STATS_ATTR_OUTBYTES, kstats->outbytes,
			      IPVS_STATS_ATTR_PAD) ||
	    FUNC3(skb, IPVS_STATS_ATTR_CPS, (u32)kstats->cps) ||
	    FUNC3(skb, IPVS_STATS_ATTR_INPPS, (u32)kstats->inpps) ||
	    FUNC3(skb, IPVS_STATS_ATTR_OUTPPS, (u32)kstats->outpps) ||
	    FUNC3(skb, IPVS_STATS_ATTR_INBPS, (u32)kstats->inbps) ||
	    FUNC3(skb, IPVS_STATS_ATTR_OUTBPS, (u32)kstats->outbps))
		goto nla_put_failure;
	FUNC1(skb, nl_stats);

	return 0;

nla_put_failure:
	FUNC0(skb, nl_stats);
	return -EMSGSIZE;
}