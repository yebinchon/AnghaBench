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
struct perf_event_attr {int /*<<< orphan*/  bp_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event_attr*,int,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct perf_event_attr*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int wp_type, void *wp_addr, unsigned long wp_len)
{
	int fd;
	struct perf_event_attr attr;

	FUNC0(&attr, wp_type, wp_addr, wp_len);
	fd = FUNC3(&attr, 0, -1, -1,
				 FUNC1());
	if (fd < 0)
		FUNC2("failed opening event %x\n", attr.bp_type);

	return fd;
}