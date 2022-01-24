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
struct swap_map_page_list {struct swap_map_page_list* next; scalar_t__ map; } ;
struct swap_map_handle {int /*<<< orphan*/ * cur; struct swap_map_page_list* maps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct swap_map_page_list*) ; 

__attribute__((used)) static void FUNC2(struct swap_map_handle *handle)
{
	struct swap_map_page_list *tmp;

	while (handle->maps) {
		if (handle->maps->map)
			FUNC0((unsigned long)handle->maps->map);
		tmp = handle->maps;
		handle->maps = handle->maps->next;
		FUNC1(tmp);
	}
	handle->cur = NULL;
}