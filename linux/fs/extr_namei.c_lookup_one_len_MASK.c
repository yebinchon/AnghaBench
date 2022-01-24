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
struct qstr {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct dentry* FUNC2 (struct qstr*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC4 (struct qstr*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,struct dentry*,int,struct qstr*) ; 

struct dentry *FUNC6(const char *name, struct dentry *base, int len)
{
	struct dentry *dentry;
	struct qstr this;
	int err;

	FUNC1(!FUNC3(base->d_inode));

	err = FUNC5(name, base, len, &this);
	if (err)
		return FUNC0(err);

	dentry = FUNC4(&this, base, 0);
	return dentry ? dentry : FUNC2(&this, base, 0);
}