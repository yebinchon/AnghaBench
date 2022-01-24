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
typedef  scalar_t__ u32 ;
struct bpf_prog_array {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct bpf_prog_array*,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct bpf_prog_array*) ; 

int FUNC2(struct bpf_prog_array *array,
			     u32 *prog_ids, u32 request_cnt,
			     u32 *prog_cnt)
{
	u32 cnt = 0;

	if (array)
		cnt = FUNC1(array);

	*prog_cnt = cnt;

	/* return early if user requested only program count or nothing to copy */
	if (!request_cnt || !cnt)
		return 0;

	/* this function is called under trace/bpf_trace.c: bpf_event_mutex */
	return FUNC0(array, prog_ids, request_cnt) ? -ENOSPC
								     : 0;
}