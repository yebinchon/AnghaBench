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
typedef  int /*<<< orphan*/  u8 ;
struct batadv_tt_orig_list_entry {int /*<<< orphan*/  flags; } ;
struct batadv_tt_global_entry {int dummy; } ;
struct batadv_orig_node {int dummy; } ;

/* Variables and functions */
 struct batadv_tt_orig_list_entry* FUNC0 (struct batadv_tt_global_entry const*,struct batadv_orig_node const*) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_tt_orig_list_entry*) ; 

__attribute__((used)) static bool
FUNC2(const struct batadv_tt_global_entry *entry,
				const struct batadv_orig_node *orig_node,
				u8 *flags)
{
	struct batadv_tt_orig_list_entry *orig_entry;
	bool found = false;

	orig_entry = FUNC0(entry, orig_node);
	if (orig_entry) {
		found = true;

		if (flags)
			*flags = orig_entry->flags;

		FUNC1(orig_entry);
	}

	return found;
}