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
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAIL_BPF ; 
 int MAX_CPUS ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpus_available_map_fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(void)
{
	__u32 invalid_cpu = MAX_CPUS;
	int ret, i;

	for (i = 0; i < MAX_CPUS; i++) {
		ret = FUNC0(cpus_available_map_fd, &i,
					  &invalid_cpu, 0);
		if (ret) {
			FUNC2(stderr, "Failed marking CPU unavailable\n");
			FUNC1(EXIT_FAIL_BPF);
		}
	}
}