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
struct dentry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  inode_killpriv ; 

int FUNC1(struct dentry *dentry)
{
	return FUNC0(inode_killpriv, 0, dentry);
}