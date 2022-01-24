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
struct iattr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kernfs_node*,struct iattr const*) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct kernfs_node *kn, const struct iattr *iattr)
{
	int ret;

	FUNC1(&kernfs_mutex);
	ret = FUNC0(kn, iattr);
	FUNC2(&kernfs_mutex);
	return ret;
}