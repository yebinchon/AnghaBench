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
struct kernfs_open_node {int /*<<< orphan*/  refcnt; } ;
struct kernfs_open_file {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {struct kernfs_open_node* open; } ;
struct kernfs_node {TYPE_1__ attr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kernfs_open_file_mutex ; 
 int /*<<< orphan*/  kernfs_open_node_lock ; 
 int /*<<< orphan*/  FUNC1 (struct kernfs_open_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct kernfs_node *kn,
				 struct kernfs_open_file *of)
{
	struct kernfs_open_node *on = kn->attr.open;
	unsigned long flags;

	FUNC3(&kernfs_open_file_mutex);
	FUNC5(&kernfs_open_node_lock, flags);

	if (of)
		FUNC2(&of->list);

	if (FUNC0(&on->refcnt))
		kn->attr.open = NULL;
	else
		on = NULL;

	FUNC6(&kernfs_open_node_lock, flags);
	FUNC4(&kernfs_open_file_mutex);

	FUNC1(on);
}