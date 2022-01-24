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
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {scalar_t__ l_next_free_rec; scalar_t__ l_tree_depth; scalar_t__ l_count; int /*<<< orphan*/ * l_recs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_extent_list*) ; 

__attribute__((used)) static void FUNC7(struct ocfs2_extent_list *el)
{
	int next_free = FUNC2(el->l_next_free_rec);

	FUNC0(FUNC2(el->l_tree_depth) != 0);

	if (next_free == 0)
		goto set_and_inc;

	if (FUNC5(&el->l_recs[0]))
		return;

	FUNC4(el->l_count == el->l_next_free_rec,
			"Asked to create an empty extent in a full list:\n"
			"count = %u, tree depth = %u",
			FUNC2(el->l_count),
			FUNC2(el->l_tree_depth));

	FUNC6(el);

set_and_inc:
	FUNC1(&el->l_next_free_rec, 1);
	FUNC3(&el->l_recs[0], 0, sizeof(struct ocfs2_extent_rec));
}