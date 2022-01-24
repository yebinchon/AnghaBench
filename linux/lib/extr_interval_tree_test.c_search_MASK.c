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
struct rb_root_cached {int dummy; } ;
struct interval_tree_node {int dummy; } ;

/* Variables and functions */
 struct interval_tree_node* FUNC0 (struct rb_root_cached*,unsigned long,unsigned long) ; 
 struct interval_tree_node* FUNC1 (struct interval_tree_node*,unsigned long,unsigned long) ; 

__attribute__((used)) static inline unsigned long
FUNC2(struct rb_root_cached *root, unsigned long start, unsigned long last)
{
	struct interval_tree_node *node;
	unsigned long results = 0;

	for (node = FUNC0(root, start, last); node;
	     node = FUNC1(node, start, last))
		results++;
	return results;
}