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
struct xt_tgchk_param {int /*<<< orphan*/  family; int /*<<< orphan*/  net; struct nf_nat_ipv4_multi_range_compat* targinfo; } ;
struct nf_nat_ipv4_multi_range_compat {int rangesize; TYPE_1__* range; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int NF_NAT_RANGE_MAP_IPS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(const struct xt_tgchk_param *par)
{
	const struct nf_nat_ipv4_multi_range_compat *mr = par->targinfo;

	if (mr->range[0].flags & NF_NAT_RANGE_MAP_IPS) {
		FUNC1("bad MAP_IPS.\n");
		return -EINVAL;
	}
	if (mr->rangesize != 1) {
		FUNC1("bad rangesize %u\n", mr->rangesize);
		return -EINVAL;
	}
	return FUNC0(par->net, par->family);
}