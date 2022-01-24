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
typedef  int /*<<< orphan*/  u32 ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int FILEID_INVALID ; 
 scalar_t__ FUNC0 (int) ; 
 struct dentry* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, u32 *fid, int *max_len,
			 struct inode *parent)
{
	struct dentry *dentry;
	int type;

	/* TODO: encode connectable file handles */
	if (parent)
		return FILEID_INVALID;

	dentry = FUNC1(inode);
	if (FUNC0(!dentry))
		return FILEID_INVALID;

	type = FUNC3(dentry, fid, max_len);

	FUNC2(dentry);
	return type;
}