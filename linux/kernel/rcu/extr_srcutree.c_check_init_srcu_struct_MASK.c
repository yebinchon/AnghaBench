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
struct srcu_struct {int /*<<< orphan*/  srcu_gp_seq_needed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct srcu_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct srcu_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct srcu_struct*,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct srcu_struct *ssp)
{
	unsigned long flags;

	/* The smp_load_acquire() pairs with the smp_store_release(). */
	if (!FUNC1(FUNC2(&ssp->srcu_gp_seq_needed))) /*^^^*/
		return; /* Already initialized. */
	FUNC3(ssp, flags);
	if (!FUNC1(ssp->srcu_gp_seq_needed)) {
		FUNC4(ssp, flags);
		return;
	}
	FUNC0(ssp, true);
	FUNC4(ssp, flags);
}