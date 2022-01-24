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
struct swap_cluster_list {int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct swap_cluster_info {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 scalar_t__ FUNC0 (struct swap_cluster_list*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct swap_cluster_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct swap_cluster_list *list,
				  struct swap_cluster_info *ci,
				  unsigned int idx)
{
	if (FUNC0(list)) {
		FUNC3(&list->head, idx, 0);
		FUNC3(&list->tail, idx, 0);
	} else {
		struct swap_cluster_info *ci_tail;
		unsigned int tail = FUNC1(&list->tail);

		/*
		 * Nested cluster lock, but both cluster locks are
		 * only acquired when we held swap_info_struct->lock
		 */
		ci_tail = ci + tail;
		FUNC4(&ci_tail->lock, SINGLE_DEPTH_NESTING);
		FUNC2(ci_tail, idx);
		FUNC5(&ci_tail->lock);
		FUNC3(&list->tail, idx, 0);
	}
}