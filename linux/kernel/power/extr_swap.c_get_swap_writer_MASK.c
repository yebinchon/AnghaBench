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
struct swap_map_page {int dummy; } ;
struct swap_map_handle {scalar_t__ cur_swap; scalar_t__ first_sector; int /*<<< orphan*/  reqd_free_pages; scalar_t__ k; struct swap_map_page* cur; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FMODE_WRITE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct swap_map_handle*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  root_swap ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct swap_map_handle *handle)
{
	int ret;

	ret = FUNC6();
	if (ret) {
		if (ret != -ENOSPC)
			FUNC2("Cannot find swap device, try swapon -a\n");
		return ret;
	}
	handle->cur = (struct swap_map_page *)FUNC1(GFP_KERNEL);
	if (!handle->cur) {
		ret = -ENOMEM;
		goto err_close;
	}
	handle->cur_swap = FUNC0(root_swap);
	if (!handle->cur_swap) {
		ret = -ENOSPC;
		goto err_rel;
	}
	handle->k = 0;
	handle->reqd_free_pages = FUNC4();
	handle->first_sector = handle->cur_swap;
	return 0;
err_rel:
	FUNC3(handle);
err_close:
	FUNC5(FMODE_WRITE);
	return ret;
}