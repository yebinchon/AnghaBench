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
typedef  int u64 ;
struct TYPE_2__ {int mem_lock; } ;
struct mem_info {TYPE_1__ data_src; } ;

/* Variables and functions */
 int PERF_MEM_LOCK_LOCKED ; 
 int PERF_MEM_LOCK_NA ; 
 int FUNC0 (char*,size_t,char*) ; 

int FUNC1(char *out, size_t sz, struct mem_info *mem_info)
{
	u64 mask = PERF_MEM_LOCK_NA;
	int l;

	if (mem_info)
		mask = mem_info->data_src.mem_lock;

	if (mask & PERF_MEM_LOCK_NA)
		l = FUNC0(out, sz, "N/A");
	else if (mask & PERF_MEM_LOCK_LOCKED)
		l = FUNC0(out, sz, "Yes");
	else
		l = FUNC0(out, sz, "No");

	return l;
}