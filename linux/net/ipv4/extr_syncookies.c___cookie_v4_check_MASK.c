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
struct tcphdr {int /*<<< orphan*/  dest; int /*<<< orphan*/  source; int /*<<< orphan*/  seq; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
typedef  size_t __u32 ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int* msstab ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(const struct iphdr *iph, const struct tcphdr *th,
		      u32 cookie)
{
	__u32 seq = FUNC2(th->seq) - 1;
	__u32 mssind = FUNC1(cookie, iph->saddr, iph->daddr,
					    th->source, th->dest, seq);

	return mssind < FUNC0(msstab) ? msstab[mssind] : 0;
}