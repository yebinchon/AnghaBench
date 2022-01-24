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
struct perf_buffer {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 int FUNC0 (struct perf_buffer*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

void FUNC2(struct perf_buffer *pb)
{
	int err;

	while (1) {
		err = FUNC0(pb, 100);
		if (err < 0 && err != -EINTR) {
			FUNC1("failed perf_buffer__poll: %d\n", err);
			return;
		}
	}
}