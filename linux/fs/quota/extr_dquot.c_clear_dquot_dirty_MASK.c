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
struct dquot {int /*<<< orphan*/  dq_dirty; int /*<<< orphan*/  dq_flags; int /*<<< orphan*/  dq_sb; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int DQUOT_NOLIST_DIRTY ; 
 int /*<<< orphan*/  DQ_MOD_B ; 
 int /*<<< orphan*/  dq_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC5(struct dquot *dquot)
{
	if (FUNC1(dquot->dq_sb)->flags & DQUOT_NOLIST_DIRTY)
		return FUNC4(DQ_MOD_B, &dquot->dq_flags);

	FUNC2(&dq_list_lock);
	if (!FUNC4(DQ_MOD_B, &dquot->dq_flags)) {
		FUNC3(&dq_list_lock);
		return 0;
	}
	FUNC0(&dquot->dq_dirty);
	FUNC3(&dq_list_lock);
	return 1;
}