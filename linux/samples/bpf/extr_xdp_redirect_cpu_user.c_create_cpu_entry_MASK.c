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
 int FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_map_fd ; 
 int /*<<< orphan*/  cpus_available_map_fd ; 
 int /*<<< orphan*/  cpus_count_map_fd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(__u32 cpu, __u32 queue_size,
			    __u32 avail_idx, bool new)
{
	__u32 curr_cpus_count = 0;
	__u32 key = 0;
	int ret;

	/* Add a CPU entry to cpumap, as this allocate a cpu entry in
	 * the kernel for the cpu.
	 */
	ret = FUNC1(cpu_map_fd, &cpu, &queue_size, 0);
	if (ret) {
		FUNC3(stderr, "Create CPU entry failed (err:%d)\n", ret);
		FUNC2(EXIT_FAIL_BPF);
	}

	/* Inform bpf_prog's that a new CPU is available to select
	 * from via some control maps.
	 */
	ret = FUNC1(cpus_available_map_fd, &avail_idx, &cpu, 0);
	if (ret) {
		FUNC3(stderr, "Add to avail CPUs failed\n");
		FUNC2(EXIT_FAIL_BPF);
	}

	/* When not replacing/updating existing entry, bump the count */
	ret = FUNC0(cpus_count_map_fd, &key, &curr_cpus_count);
	if (ret) {
		FUNC3(stderr, "Failed reading curr cpus_count\n");
		FUNC2(EXIT_FAIL_BPF);
	}
	if (new) {
		curr_cpus_count++;
		ret = FUNC1(cpus_count_map_fd, &key,
					  &curr_cpus_count, 0);
		if (ret) {
			FUNC3(stderr, "Failed write curr cpus_count\n");
			FUNC2(EXIT_FAIL_BPF);
		}
	}
	/* map_fd[7] = cpus_iterator */
	FUNC4("%s CPU:%u as idx:%u queue_size:%d (total cpus_count:%u)\n",
	       new ? "Add-new":"Replace", cpu, avail_idx,
	       queue_size, curr_cpus_count);

	return 0;
}