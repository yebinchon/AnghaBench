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
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_sc_info {int /*<<< orphan*/  sc_super; int /*<<< orphan*/  sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_SC_UNCLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct nilfs_sc_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nilfs_sc_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nilfs_transaction_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct nilfs_sc_info *sci, int mode)
{
	struct nilfs_transaction_info ti;

	FUNC2(sci->sc_super, &ti, 0);
	FUNC0(sci, mode);

	/*
	 * Unclosed segment should be retried.  We do this using sc_timer.
	 * Timeout of sc_timer will invoke complete construction which leads
	 * to close the current logical segment.
	 */
	if (FUNC4(NILFS_SC_UNCLOSED, &sci->sc_flags))
		FUNC1(sci);

	FUNC3(sci->sc_super);
}