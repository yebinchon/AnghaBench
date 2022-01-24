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
typedef  scalar_t__ u64 ;
struct sk_buff {int dummy; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;

/* Variables and functions */
 scalar_t__ ETH_P_SJA1105_META ; 
 scalar_t__ SJA1105_META_DMAC ; 
 scalar_t__ SJA1105_META_SMAC ; 
 struct ethhdr* FUNC0 (struct sk_buff const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC3(const struct sk_buff *skb)
{
	const struct ethhdr *hdr = FUNC0(skb);
	u64 smac = FUNC1(hdr->h_source);
	u64 dmac = FUNC1(hdr->h_dest);

	if (smac != SJA1105_META_SMAC)
		return false;
	if (dmac != SJA1105_META_DMAC)
		return false;
	if (FUNC2(hdr->h_proto) != ETH_P_SJA1105_META)
		return false;
	return true;
}