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
struct flow_indr_block_ing_entry {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  block_ing_cb_list ; 
 int /*<<< orphan*/  flow_indr_block_ing_cb_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct flow_indr_block_ing_entry *entry)
{
	FUNC1(&flow_indr_block_ing_cb_lock);
	FUNC0(&entry->list, &block_ing_cb_list);
	FUNC2(&flow_indr_block_ing_cb_lock);
}