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
struct nfit_mem {int dirty_shutdown; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFIT_MEM_DIRTY_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(struct nfit_mem *nfit_mem)
{
	FUNC0(NFIT_MEM_DIRTY_COUNT, &nfit_mem->flags);
	nfit_mem->dirty_shutdown = 42;
}