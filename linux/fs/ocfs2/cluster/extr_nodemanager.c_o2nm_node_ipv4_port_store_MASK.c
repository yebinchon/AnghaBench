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
typedef  unsigned long u16 ;
struct o2nm_node {int /*<<< orphan*/  nd_ipv4_port; int /*<<< orphan*/  nd_set_attributes; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EBUSY ; 
 size_t EINVAL ; 
 size_t ERANGE ; 
 int /*<<< orphan*/  O2NM_NODE_ATTR_PORT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct o2nm_node* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item,
					 const char *page, size_t count)
{
	struct o2nm_node *node = FUNC3(item);
	unsigned long tmp;
	char *p = (char *)page;

	tmp = FUNC1(p, &p, 0);
	if (!p || (*p && (*p != '\n')))
		return -EINVAL;

	if (tmp == 0)
		return -EINVAL;
	if (tmp >= (u16)-1)
		return -ERANGE;

	if (FUNC2(O2NM_NODE_ATTR_PORT, &node->nd_set_attributes))
		return -EBUSY;
	node->nd_ipv4_port = FUNC0(tmp);

	return count;
}