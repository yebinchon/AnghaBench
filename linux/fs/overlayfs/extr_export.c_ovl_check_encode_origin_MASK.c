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
struct ovl_fs {scalar_t__ upper_mnt; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {struct ovl_fs* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVL_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dentry *dentry)
{
	struct ovl_fs *ofs = dentry->d_sb->s_fs_info;

	/* Upper file handle for pure upper */
	if (!FUNC3(dentry))
		return 0;

	/*
	 * Upper file handle for non-indexed upper.
	 *
	 * Root is never indexed, so if there's an upper layer, encode upper for
	 * root.
	 */
	if (FUNC4(dentry) &&
	    !FUNC5(OVL_INDEX, FUNC0(dentry)))
		return 0;

	/*
	 * Decoding a merge dir, whose origin's ancestor is under a redirected
	 * lower dir or under a non-indexed upper is not always possible.
	 * ovl_connect_layer() will try to make origin's layer "connected" by
	 * copying up a "connectable" ancestor.
	 */
	if (FUNC1(dentry) && ofs->upper_mnt)
		return FUNC2(dentry);

	/* Lower file handle for indexed and non-upper dir/non-dir */
	return 1;
}