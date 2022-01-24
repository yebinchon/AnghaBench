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
struct kernfs_open_node {int /*<<< orphan*/  files; int /*<<< orphan*/  poll; int /*<<< orphan*/  event; int /*<<< orphan*/  refcnt; } ;
struct kernfs_open_file {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {struct kernfs_open_node* open; } ;
struct kernfs_node {TYPE_1__ attr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kernfs_open_file_mutex ; 
 int /*<<< orphan*/  kernfs_open_node_lock ; 
 int /*<<< orphan*/  FUNC4 (struct kernfs_open_node*) ; 
 struct kernfs_open_node* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct kernfs_node *kn,
				struct kernfs_open_file *of)
{
	struct kernfs_open_node *on, *new_on = NULL;

 retry:
	FUNC7(&kernfs_open_file_mutex);
	FUNC9(&kernfs_open_node_lock);

	if (!kn->attr.open && new_on) {
		kn->attr.open = new_on;
		new_on = NULL;
	}

	on = kn->attr.open;
	if (on) {
		FUNC1(&on->refcnt);
		FUNC6(&of->list, &on->files);
	}

	FUNC10(&kernfs_open_node_lock);
	FUNC8(&kernfs_open_file_mutex);

	if (on) {
		FUNC4(new_on);
		return 0;
	}

	/* not there, initialize a new one and retry */
	new_on = FUNC5(sizeof(*new_on), GFP_KERNEL);
	if (!new_on)
		return -ENOMEM;

	FUNC2(&new_on->refcnt, 0);
	FUNC2(&new_on->event, 1);
	FUNC3(&new_on->poll);
	FUNC0(&new_on->files);
	goto retry;
}