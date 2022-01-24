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
struct user_lock_res {scalar_t__ l_namelen; int /*<<< orphan*/  l_name; void* l_blocking; void* l_requested; void* l_level; int /*<<< orphan*/  l_event; int /*<<< orphan*/  l_lock; } ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* DLM_LOCK_IV ; 
 scalar_t__ USER_DLM_LOCK_ID_MAX_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct user_lock_res*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct user_lock_res *lockres,
			    struct dentry *dentry)
{
	FUNC3(lockres, 0, sizeof(*lockres));

	FUNC4(&lockres->l_lock);
	FUNC1(&lockres->l_event);
	lockres->l_level = DLM_LOCK_IV;
	lockres->l_requested = DLM_LOCK_IV;
	lockres->l_blocking = DLM_LOCK_IV;

	/* should have been checked before getting here. */
	FUNC0(dentry->d_name.len >= USER_DLM_LOCK_ID_MAX_LEN);

	FUNC2(lockres->l_name,
	       dentry->d_name.name,
	       dentry->d_name.len);
	lockres->l_namelen = dentry->d_name.len;
}