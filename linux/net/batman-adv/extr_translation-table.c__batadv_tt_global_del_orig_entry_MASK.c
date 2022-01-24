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
struct batadv_tt_orig_list_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  orig_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  vid; } ;
struct batadv_tt_global_entry {int /*<<< orphan*/  orig_list_count; TYPE_1__ common; int /*<<< orphan*/  list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_tt_orig_list_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct batadv_tt_global_entry *tt_global_entry,
				 struct batadv_tt_orig_list_entry *orig_entry)
{
	FUNC4(&tt_global_entry->list_lock);

	FUNC1(orig_entry->orig_node,
				  tt_global_entry->common.vid);
	FUNC0(&tt_global_entry->orig_list_count);
	/* requires holding tt_global_entry->list_lock and orig_entry->list
	 * being part of a list
	 */
	FUNC3(&orig_entry->list);
	FUNC2(orig_entry);
}