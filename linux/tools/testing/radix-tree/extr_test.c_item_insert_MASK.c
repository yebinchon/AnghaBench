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
struct radix_tree_root {int dummy; } ;
struct item {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct item*) ; 
 struct item* FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct radix_tree_root*,int /*<<< orphan*/ ,struct item*) ; 

int FUNC3(struct radix_tree_root *root, unsigned long index)
{
	struct item *item = FUNC1(index, 0);
	int err = FUNC2(root, item->index, item);
	if (err)
		FUNC0(item);
	return err;
}