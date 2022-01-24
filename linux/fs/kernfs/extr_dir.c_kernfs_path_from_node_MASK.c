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
struct kernfs_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kernfs_node*,struct kernfs_node*,char*,size_t) ; 
 int /*<<< orphan*/  kernfs_rename_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct kernfs_node *to, struct kernfs_node *from,
			  char *buf, size_t buflen)
{
	unsigned long flags;
	int ret;

	FUNC1(&kernfs_rename_lock, flags);
	ret = FUNC0(to, from, buf, buflen);
	FUNC2(&kernfs_rename_lock, flags);
	return ret;
}