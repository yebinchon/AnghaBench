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
struct pstore_ftrace_record {int dummy; } ;
struct persistent_ram_zone {size_t old_log_size; void* old_log; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct pstore_ftrace_record*) ; 

__attribute__((used)) static ssize_t FUNC3(struct persistent_ram_zone *dest,
				  struct persistent_ram_zone *src)
{
	size_t dest_size, src_size, total, dest_off, src_off;
	size_t dest_idx = 0, src_idx = 0, merged_idx = 0;
	void *merged_buf;
	struct pstore_ftrace_record *drec, *srec, *mrec;
	size_t record_size = sizeof(struct pstore_ftrace_record);

	dest_off = dest->old_log_size % record_size;
	dest_size = dest->old_log_size - dest_off;

	src_off = src->old_log_size % record_size;
	src_size = src->old_log_size - src_off;

	total = dest_size + src_size;
	merged_buf = FUNC1(total, GFP_KERNEL);
	if (!merged_buf)
		return -ENOMEM;

	drec = (struct pstore_ftrace_record *)(dest->old_log + dest_off);
	srec = (struct pstore_ftrace_record *)(src->old_log + src_off);
	mrec = (struct pstore_ftrace_record *)(merged_buf);

	while (dest_size > 0 && src_size > 0) {
		if (FUNC2(&drec[dest_idx]) <
		    FUNC2(&srec[src_idx])) {
			mrec[merged_idx++] = drec[dest_idx++];
			dest_size -= record_size;
		} else {
			mrec[merged_idx++] = srec[src_idx++];
			src_size -= record_size;
		}
	}

	while (dest_size > 0) {
		mrec[merged_idx++] = drec[dest_idx++];
		dest_size -= record_size;
	}

	while (src_size > 0) {
		mrec[merged_idx++] = srec[src_idx++];
		src_size -= record_size;
	}

	FUNC0(dest->old_log);
	dest->old_log = merged_buf;
	dest->old_log_size = total;

	return 0;
}