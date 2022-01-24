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
struct ocfs2_lock_res {int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_holders; } ;
struct ocfs2_lock_holder {int /*<<< orphan*/  oh_list; int /*<<< orphan*/  oh_owner_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6(struct ocfs2_lock_res *lockres,
				   struct ocfs2_lock_holder *oh)
{
	FUNC0(&oh->oh_list);
	oh->oh_owner_pid = FUNC1(FUNC5(current));

	FUNC3(&lockres->l_lock);
	FUNC2(&oh->oh_list, &lockres->l_holders);
	FUNC4(&lockres->l_lock);
}