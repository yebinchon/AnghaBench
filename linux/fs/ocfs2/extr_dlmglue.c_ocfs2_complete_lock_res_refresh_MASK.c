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
struct ocfs2_lock_res {int /*<<< orphan*/  l_event; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_LOCK_NEEDS_REFRESH ; 
 int /*<<< orphan*/  OCFS2_LOCK_REFRESHING ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct ocfs2_lock_res *lockres,
						   int status)
{
	unsigned long flags;

	FUNC1(&lockres->l_lock, flags);
	FUNC0(lockres, OCFS2_LOCK_REFRESHING);
	if (!status)
		FUNC0(lockres, OCFS2_LOCK_NEEDS_REFRESH);
	FUNC2(&lockres->l_lock, flags);

	FUNC3(&lockres->l_event);
}