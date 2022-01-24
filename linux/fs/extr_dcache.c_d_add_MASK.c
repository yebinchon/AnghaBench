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
struct inode {int /*<<< orphan*/  i_lock; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dentry *entry, struct inode *inode)
{
	if (inode) {
		FUNC1(entry, inode);
		FUNC2(&inode->i_lock);
	}
	FUNC0(entry, inode);
}