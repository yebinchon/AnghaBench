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
struct xt_tgchk_param {int /*<<< orphan*/  family; int /*<<< orphan*/  net; struct nf_nat_range2* targinfo; } ;
struct nf_nat_range2 {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int NF_NAT_RANGE_MAP_IPS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const struct xt_tgchk_param *par)
{
	const struct nf_nat_range2 *range = par->targinfo;

	if (range->flags & NF_NAT_RANGE_MAP_IPS)
		return -EINVAL;

	return FUNC0(par->net, par->family);
}