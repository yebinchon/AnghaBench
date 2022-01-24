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
struct dentry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct dentry*,int) ; 

__attribute__((used)) static int FUNC5(struct dentry *dentry)
{
	int err;

	if (FUNC1(dentry))
		return 0;

	err = FUNC3(dentry);
	if (!err) {
		err = FUNC0(dentry);
		FUNC2(dentry);
	}

	if (err) {
		FUNC4("overlayfs: failed to copy up on encode (%pd2, err=%i)\n",
				    dentry, err);
	}

	return err;
}