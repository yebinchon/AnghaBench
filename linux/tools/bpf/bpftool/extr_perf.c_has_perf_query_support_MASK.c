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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  int __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int perf_query_supported ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static bool FUNC7(void)
{
	__u64 probe_offset, probe_addr;
	__u32 len, prog_id, fd_type;
	char buf[256];
	int fd;

	if (perf_query_supported)
		goto out;

	fd = FUNC4("/", O_RDONLY);
	if (fd < 0) {
		FUNC5("perf_query_support: cannot open directory \"/\" (%s)",
		      FUNC6(errno));
		goto out;
	}

	/* the following query will fail as no bpf attachment,
	 * the expected errno is ENOTSUPP
	 */
	errno = 0;
	len = sizeof(buf);
	FUNC0(FUNC3(), fd, 0, buf, &len, &prog_id,
			  &fd_type, &probe_offset, &probe_addr);

	if (errno == 524 /* ENOTSUPP */) {
		perf_query_supported = 1;
		goto close_fd;
	}

	perf_query_supported = 2;
	FUNC5("perf_query_support: %s", FUNC6(errno));
	FUNC2(stderr,
		"HINT: non root or kernel doesn't support TASK_FD_QUERY\n");

close_fd:
	FUNC1(fd);
out:
	return perf_query_supported == 1;
}