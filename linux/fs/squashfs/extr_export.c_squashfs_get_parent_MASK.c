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
struct dentry {int dummy; } ;
struct TYPE_2__ {unsigned int parent; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* FUNC2 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC3(struct dentry *child)
{
	struct inode *inode = FUNC0(child);
	unsigned int parent_ino = FUNC2(inode)->parent;

	return FUNC1(inode->i_sb, parent_ino);
}