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
struct nfit_test_resource {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  pfn_t ;

/* Variables and functions */
 unsigned long PFN_MAP ; 
 struct nfit_test_resource* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

pfn_t FUNC2(phys_addr_t addr, unsigned long flags)
{
	struct nfit_test_resource *nfit_res = FUNC0(addr);

	if (nfit_res)
		flags &= ~PFN_MAP;
        return FUNC1(addr, flags);
}