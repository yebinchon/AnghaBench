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
struct swsusp_info {scalar_t__ pages; } ;
struct swap_map_handle {int dummy; } ;
struct snapshot_handle {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned int SF_NOCOMPRESS_MODE ; 
 scalar_t__ FUNC0 (struct snapshot_handle) ; 
 int FUNC1 (struct swap_map_handle*,unsigned int*) ; 
 int FUNC2 (struct swap_map_handle*,struct snapshot_handle*,scalar_t__) ; 
 int FUNC3 (struct swap_map_handle*,struct snapshot_handle*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct snapshot_handle*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (struct snapshot_handle*) ; 
 int FUNC7 (struct swap_map_handle*,struct swsusp_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct swap_map_handle*) ; 

int FUNC9(unsigned int *flags_p)
{
	int error;
	struct swap_map_handle handle;
	struct snapshot_handle snapshot;
	struct swsusp_info *header;

	FUNC4(&snapshot, 0, sizeof(struct snapshot_handle));
	error = FUNC6(&snapshot);
	if (error < (int)PAGE_SIZE)
		return error < 0 ? error : -EFAULT;
	header = (struct swsusp_info *)FUNC0(snapshot);
	error = FUNC1(&handle, flags_p);
	if (error)
		goto end;
	if (!error)
		error = FUNC7(&handle, header, NULL);
	if (!error) {
		error = (*flags_p & SF_NOCOMPRESS_MODE) ?
			FUNC2(&handle, &snapshot, header->pages - 1) :
			FUNC3(&handle, &snapshot, header->pages - 1);
	}
	FUNC8(&handle);
end:
	if (!error)
		FUNC5("Image successfully loaded\n");
	else
		FUNC5("Error %d resuming\n", error);
	return error;
}