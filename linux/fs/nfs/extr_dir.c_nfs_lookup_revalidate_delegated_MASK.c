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

/* Variables and functions */
 int FUNC0 (struct inode*,struct dentry*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct inode *dir, struct dentry *dentry,
				struct inode *inode)
{
	FUNC2(dentry, FUNC1(dir));
	return FUNC0(dir, dentry, inode, 1);
}