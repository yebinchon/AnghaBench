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
struct ocfs2_lock_res {int l_flags; unsigned int l_pending_gen; int /*<<< orphan*/  l_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OCFS2_LOCK_BUSY ; 
 int /*<<< orphan*/  OCFS2_LOCK_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(struct ocfs2_lock_res *lockres)
{
	FUNC1(&lockres->l_lock);
	FUNC0(!(lockres->l_flags & OCFS2_LOCK_BUSY));

	FUNC2(lockres, OCFS2_LOCK_PENDING);

	return lockres->l_pending_gen;
}