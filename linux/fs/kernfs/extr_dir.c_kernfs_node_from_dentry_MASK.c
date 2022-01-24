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
struct kernfs_node {int dummy; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_2__ {int /*<<< orphan*/ * s_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct kernfs_node* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  kernfs_sops ; 

struct kernfs_node *FUNC2(struct dentry *dentry)
{
	if (dentry->d_sb->s_op == &kernfs_sops &&
	    !FUNC0(dentry))
		return FUNC1(dentry);
	return NULL;
}