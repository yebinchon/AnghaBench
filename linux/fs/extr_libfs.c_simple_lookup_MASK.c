#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct dentry {TYPE_2__* d_sb; TYPE_1__ d_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_d_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NAME_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  simple_dentry_operations ; 

struct dentry *FUNC3(struct inode *dir, struct dentry *dentry, unsigned int flags)
{
	if (dentry->d_name.len > NAME_MAX)
		return FUNC0(-ENAMETOOLONG);
	if (!dentry->d_sb->s_d_op)
		FUNC2(dentry, &simple_dentry_operations);
	FUNC1(dentry, NULL);
	return NULL;
}