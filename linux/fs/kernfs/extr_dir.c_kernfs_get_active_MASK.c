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
struct kernfs_node {int /*<<< orphan*/  dep_map; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

struct kernfs_node *FUNC4(struct kernfs_node *kn)
{
	if (FUNC3(!kn))
		return NULL;

	if (!FUNC0(&kn->active))
		return NULL;

	if (FUNC1(kn))
		FUNC2(&kn->dep_map, 0, 1, _RET_IP_);
	return kn;
}