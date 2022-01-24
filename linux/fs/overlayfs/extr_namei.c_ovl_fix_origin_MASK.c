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
struct dentry {int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dentry*,struct dentry*,struct dentry*) ; 
 int FUNC4 (struct dentry*) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry, struct dentry *lower,
			  struct dentry *upper)
{
	int err;

	if (FUNC0(upper))
		return 0;

	err = FUNC4(dentry);
	if (err)
		return err;

	err = FUNC3(dentry, lower, upper);
	if (!err)
		err = FUNC2(dentry->d_parent, upper->d_parent);

	FUNC1(dentry);
	return err;
}