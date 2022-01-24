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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 

__attribute__((used)) static bool FUNC4(struct inode *inode, struct dentry *lowerdentry,
			     struct dentry *upperdentry, bool strict)
{
	/*
	 * For directories, @strict verify from lookup path performs consistency
	 * checks, so NULL lower/upper in dentry must match NULL lower/upper in
	 * inode. Non @strict verify from NFS handle decode path passes NULL for
	 * 'unknown' lower/upper.
	 */
	if (FUNC0(inode->i_mode) && strict) {
		/* Real lower dir moved to upper layer under us? */
		if (!lowerdentry && FUNC2(inode))
			return false;

		/* Lookup of an uncovered redirect origin? */
		if (!upperdentry && FUNC3(inode))
			return false;
	}

	/*
	 * Allow non-NULL lower inode in ovl_inode even if lowerdentry is NULL.
	 * This happens when finding a copied up overlay inode for a renamed
	 * or hardlinked overlay dentry and lower dentry cannot be followed
	 * by origin because lower fs does not support file handles.
	 */
	if (lowerdentry && FUNC2(inode) != FUNC1(lowerdentry))
		return false;

	/*
	 * Allow non-NULL __upperdentry in inode even if upperdentry is NULL.
	 * This happens when finding a lower alias for a copied up hard link.
	 */
	if (upperdentry && FUNC3(inode) != FUNC1(upperdentry))
		return false;

	return true;
}