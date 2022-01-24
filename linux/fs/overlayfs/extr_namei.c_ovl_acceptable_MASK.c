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
struct vfsmount {int /*<<< orphan*/  mnt_root; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *ctx, struct dentry *dentry)
{
	/*
	 * A non-dir origin may be disconnected, which is fine, because
	 * we only need it for its unique inode number.
	 */
	if (!FUNC0(dentry))
		return 1;

	/* Don't decode a deleted empty directory */
	if (FUNC1(dentry))
		return 0;

	/* Check if directory belongs to the layer we are decoding from */
	return FUNC2(dentry, ((struct vfsmount *)ctx)->mnt_root);
}