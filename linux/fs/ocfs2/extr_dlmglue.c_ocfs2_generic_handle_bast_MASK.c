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
struct ocfs2_lock_res {int l_blocking; int /*<<< orphan*/  l_level; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ML_BASTS ; 
 int /*<<< orphan*/  OCFS2_LOCK_BLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ocfs2_lock_res *lockres,
				     int level)
{
	int needs_downconvert = 0;

	FUNC0(&lockres->l_lock);

	if (level > lockres->l_blocking) {
		/* only schedule a downconvert if we haven't already scheduled
		 * one that goes low enough to satisfy the level we're
		 * blocking.  this also catches the case where we get
		 * duplicate BASTs */
		if (FUNC3(level) <
		    FUNC3(lockres->l_blocking))
			needs_downconvert = 1;

		lockres->l_blocking = level;
	}

	FUNC2(ML_BASTS, "lockres %s, block %d, level %d, l_block %d, dwn %d\n",
	     lockres->l_name, level, lockres->l_level, lockres->l_blocking,
	     needs_downconvert);

	if (needs_downconvert)
		FUNC1(lockres, OCFS2_LOCK_BLOCKED);
	FUNC2(0, "needs_downconvert = %d\n", needs_downconvert);
	return needs_downconvert;
}