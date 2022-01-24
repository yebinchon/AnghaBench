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
struct ocfs2_lock_res {scalar_t__ l_level; } ;
struct ocfs2_caching_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DLM_LOCK_EX ; 
 int DLM_LOCK_NL ; 
 int DLM_LOCK_PR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_caching_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ocfs2_caching_info *ci,
				 struct ocfs2_lock_res *lockres,
				 int new_level)
{
	int checkpointed = FUNC2(ci);

	FUNC0(new_level != DLM_LOCK_NL && new_level != DLM_LOCK_PR);
	FUNC0(lockres->l_level != DLM_LOCK_EX && !checkpointed);

	if (checkpointed)
		return 1;

	FUNC4(FUNC1(FUNC3(ci)));
	return 0;
}