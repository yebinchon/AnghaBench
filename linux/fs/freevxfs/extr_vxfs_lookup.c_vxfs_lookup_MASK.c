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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VXFS_NAMELEN ; 
 struct dentry* FUNC1 (struct inode*,struct dentry*) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct inode*,struct dentry*) ; 

__attribute__((used)) static struct dentry *
FUNC4(struct inode *dip, struct dentry *dp, unsigned int flags)
{
	struct inode		*ip = NULL;
	ino_t			ino;
			 
	if (dp->d_name.len > VXFS_NAMELEN)
		return FUNC0(-ENAMETOOLONG);
				 
	ino = FUNC3(dip, dp);
	if (ino)
		ip = FUNC2(dip->i_sb, ino);
	return FUNC1(ip, dp);
}