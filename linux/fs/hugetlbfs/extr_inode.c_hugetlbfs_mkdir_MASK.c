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
typedef  int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int FUNC0 (struct inode*,struct dentry*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 

__attribute__((used)) static int FUNC2(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	int retval = FUNC0(dir, dentry, mode | S_IFDIR, 0);
	if (!retval)
		FUNC1(dir);
	return retval;
}