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
struct orangefs_kernel_op_s {int /*<<< orphan*/  lock; int /*<<< orphan*/  waitq; int /*<<< orphan*/  op_state; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_VFS_STATE_PURGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct orangefs_kernel_op_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct orangefs_kernel_op_s*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(struct orangefs_kernel_op_s *op)
{
	FUNC4(&op->lock);
	if (FUNC6(FUNC2(op))) {
		FUNC1(&op->list);
		FUNC5(&op->lock);
		FUNC3(op);
	} else {
		op->op_state |= OP_VFS_STATE_PURGED;
		FUNC0(&op->waitq);
		FUNC5(&op->lock);
	}
}