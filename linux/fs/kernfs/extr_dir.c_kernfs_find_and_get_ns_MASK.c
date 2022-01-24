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
 struct kernfs_node* FUNC0 (struct kernfs_node*,char const*,void const*) ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct kernfs_node *FUNC4(struct kernfs_node *parent,
					   const char *name, const void *ns)
{
	struct kernfs_node *kn;

	FUNC2(&kernfs_mutex);
	kn = FUNC0(parent, name, ns);
	FUNC1(kn);
	FUNC3(&kernfs_mutex);

	return kn;
}