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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {void* lowerdata; void* lower; struct dentry* __upperdentry; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 void* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct inode*) ; 

void FUNC5(struct inode *inode, struct dentry *upperdentry,
		    struct dentry *lowerdentry, struct dentry *lowerdata)
{
	struct inode *realinode = FUNC1(upperdentry ?: lowerdentry);

	if (upperdentry)
		FUNC0(inode)->__upperdentry = upperdentry;
	if (lowerdentry)
		FUNC0(inode)->lower = FUNC2(FUNC1(lowerdentry));
	if (lowerdata)
		FUNC0(inode)->lowerdata = FUNC2(FUNC1(lowerdata));

	FUNC3(realinode, inode);
	FUNC4(realinode, inode);
	if (!inode->i_ino)
		inode->i_ino = realinode->i_ino;
}