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
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC4(struct dentry *dentry, const char *xattr_name)
{
	if (!FUNC0() || !FUNC1(xattr_name))
		return;

	FUNC2(dentry->d_inode);

	FUNC3(dentry, xattr_name, NULL, 0);
}