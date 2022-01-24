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
typedef  int __u64 ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 () ; 
 int* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  info_map ; 
 int /*<<< orphan*/  status_map ; 

int FUNC3(void *ctx)
{
	__u64 *info_val, *status_val;
	__u32 key = 0, pid, sig;
	int ret;

	status_val = FUNC1(&status_map, &key);
	if (!status_val || *status_val != 0)
		return 0;

	info_val = FUNC1(&info_map, &key);
	if (!info_val || *info_val == 0)
		return 0;

	sig = *info_val >> 32;
	pid = *info_val & 0xffffFFFF;

	if ((FUNC0() >> 32) == pid) {
		ret = FUNC2(sig);
		if (ret == 0)
			*status_val = 1;
	}

	return 0;
}