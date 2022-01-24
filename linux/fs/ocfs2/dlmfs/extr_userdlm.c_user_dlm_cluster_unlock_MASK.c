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
struct user_lock_res {int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_namelen; } ;

/* Variables and functions */
 int DLM_LOCK_EX ; 
 int DLM_LOCK_PR ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct user_lock_res*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct user_lock_res*,int) ; 

void FUNC5(struct user_lock_res *lockres,
			     int level)
{
	if (level != DLM_LOCK_EX &&
	    level != DLM_LOCK_PR) {
		FUNC1(ML_ERROR, "lockres %.*s: invalid request!\n",
		     lockres->l_namelen, lockres->l_name);
		return;
	}

	FUNC2(&lockres->l_lock);
	FUNC4(lockres, level);
	FUNC0(lockres);
	FUNC3(&lockres->l_lock);
}