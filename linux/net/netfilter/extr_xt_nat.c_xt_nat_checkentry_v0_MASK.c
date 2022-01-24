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
struct xt_tgchk_param {int /*<<< orphan*/  family; int /*<<< orphan*/  net; struct nf_nat_ipv4_multi_range_compat* targinfo; } ;
struct nf_nat_ipv4_multi_range_compat {int rangesize; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(const struct xt_tgchk_param *par)
{
	const struct nf_nat_ipv4_multi_range_compat *mr = par->targinfo;

	if (mr->rangesize != 1) {
		FUNC1("multiple ranges no longer supported\n");
		return -EINVAL;
	}
	return FUNC0(par->net, par->family);
}