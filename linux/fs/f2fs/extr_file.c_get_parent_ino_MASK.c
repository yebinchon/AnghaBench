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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 struct dentry* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, nid_t *pino)
{
	struct dentry *dentry;

	inode = FUNC2(inode);
	dentry = FUNC0(inode);
	FUNC3(inode);
	if (!dentry)
		return 0;

	*pino = FUNC4(dentry);
	FUNC1(dentry);
	return 1;
}