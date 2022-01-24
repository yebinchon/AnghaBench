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
struct tcphdr {int /*<<< orphan*/  seq; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int FUNC0 (scalar_t__ const*) ; 
 scalar_t__ const* msstab ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

u32 FUNC3(const struct ipv6hdr *iph,
			      const struct tcphdr *th, __u16 *mssp)
{
	int mssind;
	const __u16 mss = *mssp;

	for (mssind = FUNC0(msstab) - 1; mssind ; mssind--)
		if (mss >= msstab[mssind])
			break;

	*mssp = msstab[mssind];

	return FUNC2(&iph->saddr, &iph->daddr, th->source,
				     th->dest, FUNC1(th->seq), mssind);
}