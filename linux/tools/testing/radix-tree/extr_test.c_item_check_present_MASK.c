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
struct item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct item*,unsigned long) ; 
 struct item* FUNC2 (struct radix_tree_root*,unsigned long) ; 

void FUNC3(struct radix_tree_root *root, unsigned long index)
{
	struct item *item;

	item = FUNC2(root, index);
	FUNC0(item != NULL);
	FUNC1(item, index);
}