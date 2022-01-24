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
struct user_namespace {int dummy; } ;
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct user_namespace*,int /*<<< orphan*/ ) ; 

bool FUNC2(struct user_namespace *ns, const struct inode *inode)
{
	return FUNC1(ns, inode->i_uid) &&
		FUNC0(ns, inode->i_gid);
}