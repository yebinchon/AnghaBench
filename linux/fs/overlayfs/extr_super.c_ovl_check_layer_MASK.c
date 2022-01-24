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
struct super_block {int dummy; } ;
struct ovl_fs {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ELOOP ; 
 struct dentry* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct super_block*,struct dentry*) ; 
 int FUNC4 (struct ovl_fs*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb, struct ovl_fs *ofs,
			   struct dentry *dentry, const char *name)
{
	struct dentry *next = dentry, *parent;
	int err = 0;

	if (!dentry)
		return 0;

	parent = FUNC0(next);

	/* Walk back ancestors to root (inclusive) looking for traps */
	while (!err && parent != next) {
		if (FUNC3(sb, parent)) {
			err = -ELOOP;
			FUNC5("overlayfs: overlapping %s path\n", name);
		} else if (FUNC2(parent)) {
			err = FUNC4(ofs, name);
		}
		next = parent;
		parent = FUNC0(next);
		FUNC1(next);
	}

	FUNC1(parent);

	return err;
}