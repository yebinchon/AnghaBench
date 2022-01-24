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
struct proc_dir_entry {int /*<<< orphan*/  pde_unload_completion; int /*<<< orphan*/  in_use; } ;

/* Variables and functions */
 scalar_t__ BIAS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct proc_dir_entry *pde)
{
	if (FUNC2(FUNC0(&pde->in_use) == BIAS))
		FUNC1(pde->pde_unload_completion);
}