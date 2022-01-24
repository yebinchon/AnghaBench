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
struct o2nm_node {int /*<<< orphan*/  nd_item; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct o2nm_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct o2nm_node*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4(void)
{
	int ret = 0;
	struct o2nm_node *local_node;

	local_node = FUNC1(FUNC3());
	if (!local_node) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC0(&local_node->nd_item);
	FUNC2(local_node);

out:
	return ret;
}