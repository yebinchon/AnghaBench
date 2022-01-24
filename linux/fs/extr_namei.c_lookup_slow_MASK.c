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
struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct qstr const*,struct dentry*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC3(const struct qstr *name,
				  struct dentry *dir,
				  unsigned int flags)
{
	struct inode *inode = dir->d_inode;
	struct dentry *res;
	FUNC1(inode);
	res = FUNC0(name, dir, flags);
	FUNC2(inode);
	return res;
}