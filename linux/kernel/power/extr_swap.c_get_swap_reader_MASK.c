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
struct swap_map_page_list {struct swap_map_page* map; struct swap_map_page_list* next; } ;
struct swap_map_page {scalar_t__ next_swap; } ;
struct swap_map_handle {struct swap_map_page_list* maps; struct swap_map_page* cur; scalar_t__ k; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {unsigned int flags; scalar_t__ image; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GFP_NOIO ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int __GFP_HIGH ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct swap_map_page*,int /*<<< orphan*/ *) ; 
 struct swap_map_page_list* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct swap_map_handle*) ; 
 TYPE_1__* swsusp_header ; 

__attribute__((used)) static int FUNC4(struct swap_map_handle *handle,
		unsigned int *flags_p)
{
	int error;
	struct swap_map_page_list *tmp, *last;
	sector_t offset;

	*flags_p = swsusp_header->flags;

	if (!swsusp_header->image) /* how can this happen? */
		return -EINVAL;

	handle->cur = NULL;
	last = handle->maps = NULL;
	offset = swsusp_header->image;
	while (offset) {
		tmp = FUNC2(sizeof(*handle->maps), GFP_KERNEL);
		if (!tmp) {
			FUNC3(handle);
			return -ENOMEM;
		}
		if (!handle->maps)
			handle->maps = tmp;
		if (last)
			last->next = tmp;
		last = tmp;

		tmp->map = (struct swap_map_page *)
			   FUNC0(GFP_NOIO | __GFP_HIGH);
		if (!tmp->map) {
			FUNC3(handle);
			return -ENOMEM;
		}

		error = FUNC1(REQ_OP_READ, 0, offset, tmp->map, NULL);
		if (error) {
			FUNC3(handle);
			return error;
		}
		offset = tmp->map->next_swap;
	}
	handle->k = 0;
	handle->cur = handle->maps->map;
	return 0;
}