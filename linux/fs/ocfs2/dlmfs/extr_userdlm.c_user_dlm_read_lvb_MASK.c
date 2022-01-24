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
struct user_lock_res {scalar_t__ l_level; int /*<<< orphan*/  l_lock; int /*<<< orphan*/  l_lksb; } ;
struct inode {int dummy; } ;
typedef  unsigned int ssize_t ;
struct TYPE_2__ {struct user_lock_res ip_lockres; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ DLM_LOCK_PR ; 
 unsigned int DLM_LVB_LEN ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,unsigned int) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

ssize_t FUNC7(struct inode *inode,
			  char *val,
			  unsigned int len)
{
	struct user_lock_res *lockres = &FUNC1(inode)->ip_lockres;
	char *lvb;
	ssize_t ret = len;

	FUNC0(len > DLM_LVB_LEN);

	FUNC5(&lockres->l_lock);

	FUNC0(lockres->l_level < DLM_LOCK_PR);
	if (FUNC4(&lockres->l_lksb)) {
		lvb = FUNC3(&lockres->l_lksb);
		FUNC2(val, lvb, len);
	} else
		ret = 0;

	FUNC6(&lockres->l_lock);
	return ret;
}