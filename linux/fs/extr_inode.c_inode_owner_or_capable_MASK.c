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
struct user_namespace {int dummy; } ;
struct inode {int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_FOWNER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct user_namespace* FUNC1 () ; 
 scalar_t__ FUNC2 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC5(const struct inode *inode)
{
	struct user_namespace *ns;

	if (FUNC4(FUNC0(), inode->i_uid))
		return true;

	ns = FUNC1();
	if (FUNC2(ns, inode->i_uid) && FUNC3(ns, CAP_FOWNER))
		return true;
	return false;
}