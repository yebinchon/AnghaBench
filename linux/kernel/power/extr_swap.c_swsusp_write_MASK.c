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
struct swsusp_info {int dummy; } ;
struct swap_map_handle {int dummy; } ;
struct snapshot_handle {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOSPC ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned int SF_NOCOMPRESS_MODE ; 
 scalar_t__ FUNC0 (struct snapshot_handle) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (struct swap_map_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct snapshot_handle*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct swap_map_handle*,struct snapshot_handle*,unsigned long) ; 
 int FUNC6 (struct swap_map_handle*,struct snapshot_handle*,unsigned long) ; 
 unsigned long FUNC7 () ; 
 int FUNC8 (struct snapshot_handle*) ; 
 int FUNC9 (struct swap_map_handle*,struct swsusp_info*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct swap_map_handle*,unsigned int,int) ; 

int FUNC11(unsigned int flags)
{
	struct swap_map_handle handle;
	struct snapshot_handle snapshot;
	struct swsusp_info *header;
	unsigned long pages;
	int error;

	pages = FUNC7();
	error = FUNC2(&handle);
	if (error) {
		FUNC4("Cannot get swap writer\n");
		return error;
	}
	if (flags & SF_NOCOMPRESS_MODE) {
		if (!FUNC1(pages)) {
			FUNC4("Not enough free swap\n");
			error = -ENOSPC;
			goto out_finish;
		}
	}
	FUNC3(&snapshot, 0, sizeof(struct snapshot_handle));
	error = FUNC8(&snapshot);
	if (error < (int)PAGE_SIZE) {
		if (error >= 0)
			error = -EFAULT;

		goto out_finish;
	}
	header = (struct swsusp_info *)FUNC0(snapshot);
	error = FUNC9(&handle, header, NULL);
	if (!error) {
		error = (flags & SF_NOCOMPRESS_MODE) ?
			FUNC5(&handle, &snapshot, pages - 1) :
			FUNC6(&handle, &snapshot, pages - 1);
	}
out_finish:
	error = FUNC10(&handle, flags, error);
	return error;
}