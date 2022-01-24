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
typedef  void* u8 ;
struct batadv_tt_orig_list_entry {int ttvn; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; void* flags; struct batadv_orig_node* orig_node; } ;
struct TYPE_2__ {int /*<<< orphan*/  vid; } ;
struct batadv_tt_global_entry {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  orig_list_count; int /*<<< orphan*/  orig_list; TYPE_1__ common; } ;
struct batadv_orig_node {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct batadv_tt_orig_list_entry* FUNC2 (struct batadv_tt_global_entry*,struct batadv_orig_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_orig_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct batadv_tt_global_entry*) ; 
 int /*<<< orphan*/  batadv_tt_orig_cache ; 
 int /*<<< orphan*/  FUNC5 (struct batadv_tt_orig_list_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct batadv_tt_orig_list_entry* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct batadv_tt_global_entry *tt_global,
				struct batadv_orig_node *orig_node, int ttvn,
				u8 flags)
{
	struct batadv_tt_orig_list_entry *orig_entry;

	FUNC10(&tt_global->list_lock);

	orig_entry = FUNC2(tt_global, orig_node);
	if (orig_entry) {
		/* refresh the ttvn: the current value could be a bogus one that
		 * was added during a "temporary client detection"
		 */
		orig_entry->ttvn = ttvn;
		orig_entry->flags = flags;
		goto sync_flags;
	}

	orig_entry = FUNC7(batadv_tt_orig_cache, GFP_ATOMIC);
	if (!orig_entry)
		goto out;

	FUNC0(&orig_entry->list);
	FUNC8(&orig_node->refcount);
	FUNC3(orig_node, tt_global->common.vid);
	orig_entry->orig_node = orig_node;
	orig_entry->ttvn = ttvn;
	orig_entry->flags = flags;
	FUNC9(&orig_entry->refcount);

	FUNC8(&orig_entry->refcount);
	FUNC6(&orig_entry->list,
			   &tt_global->orig_list);
	FUNC1(&tt_global->orig_list_count);

sync_flags:
	FUNC4(tt_global);
out:
	if (orig_entry)
		FUNC5(orig_entry);

	FUNC11(&tt_global->list_lock);
}