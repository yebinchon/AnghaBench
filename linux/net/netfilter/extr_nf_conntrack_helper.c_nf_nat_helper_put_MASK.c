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
struct nf_conntrack_nat_helper {int /*<<< orphan*/  module; } ;
struct nf_conntrack_helper {int /*<<< orphan*/  nat_mod_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nf_conntrack_nat_helper* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct nf_conntrack_helper *helper)
{
	struct nf_conntrack_nat_helper *nat;

	nat = FUNC2(helper->nat_mod_name);
	if (FUNC0(!nat))
		return;

	FUNC1(nat->module);
}