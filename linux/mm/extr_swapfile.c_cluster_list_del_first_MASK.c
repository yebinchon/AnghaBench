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
struct swap_cluster_info {int dummy; } ;
struct swap_cluster_list {struct swap_cluster_info head; struct swap_cluster_info tail; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct swap_cluster_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct swap_cluster_info*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct swap_cluster_info*) ; 

__attribute__((used)) static unsigned int FUNC3(struct swap_cluster_list *list,
					   struct swap_cluster_info *ci)
{
	unsigned int idx;

	idx = FUNC0(&list->head);
	if (FUNC0(&list->tail) == idx) {
		FUNC2(&list->head);
		FUNC2(&list->tail);
	} else
		FUNC1(&list->head,
				      FUNC0(&ci[idx]), 0);

	return idx;
}