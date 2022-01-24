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
struct integrity_iint_cache {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct integrity_iint_cache*,struct inode*,struct file*) ; 
 int /*<<< orphan*/  ima_policy_flag ; 
 struct integrity_iint_cache* FUNC3 (struct inode*) ; 

void FUNC4(struct file *file)
{
	struct inode *inode = FUNC1(file);
	struct integrity_iint_cache *iint;

	if (!ima_policy_flag || !FUNC0(inode->i_mode))
		return;

	iint = FUNC3(inode);
	if (!iint)
		return;

	FUNC2(iint, inode, file);
}