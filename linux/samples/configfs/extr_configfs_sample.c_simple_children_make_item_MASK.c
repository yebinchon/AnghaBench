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
struct config_item {int dummy; } ;
struct simple_child {struct config_item item; scalar_t__ storeme; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct config_item* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*,char const*,int /*<<< orphan*/ *) ; 
 struct simple_child* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  simple_child_type ; 

__attribute__((used)) static struct config_item *FUNC3(struct config_group *group,
		const char *name)
{
	struct simple_child *simple_child;

	simple_child = FUNC2(sizeof(struct simple_child), GFP_KERNEL);
	if (!simple_child)
		return FUNC0(-ENOMEM);

	FUNC1(&simple_child->item, name,
				   &simple_child_type);

	simple_child->storeme = 0;

	return &simple_child->item;
}