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
struct rb_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rb_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct rb_node* FUNC1 (int /*<<< orphan*/ *) ; 
 struct rb_node* FUNC2 (struct rb_node*) ; 
 TYPE_1__ root ; 

__attribute__((used)) static void FUNC3(int nr_nodes)
{
	struct rb_node *rb;
	int count = 0;
	for (rb = FUNC1(&root.rb_root); rb; rb = FUNC2(rb))
		count++;

	FUNC0(count != nr_nodes);
}