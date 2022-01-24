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
typedef  int u64 ;
struct sigaction {scalar_t__ sa_flags; int /*<<< orphan*/  sa_sigaction; int /*<<< orphan*/  sa_mask; } ;
struct perf_event_attr {int exclude_kernel; int /*<<< orphan*/  config; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PERF_COUNT_HW_INSTRUCTIONS ; 
 int /*<<< orphan*/  PERF_TYPE_HARDWARE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int STRERR_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  page_size ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 
 int /*<<< orphan*/  segfault_handler ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC10 (struct perf_event_attr*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(void)
{
	volatile int tmp = 0;
	u64 i, loops = 1000;
	int n;
	int fd;
	void *addr;
	struct perf_event_attr attr = {
		.type = PERF_TYPE_HARDWARE,
		.config = PERF_COUNT_HW_INSTRUCTIONS,
		.exclude_kernel = 1,
	};
	u64 delta_sum = 0;
        struct sigaction sa;
	char sbuf[STRERR_BUFSIZE];

	FUNC8(&sa.sa_mask);
	sa.sa_sigaction = segfault_handler;
	sa.sa_flags = 0;
	FUNC7(SIGSEGV, &sa, NULL);

	fd = FUNC10(&attr, 0, -1, -1,
				 FUNC4());
	if (fd < 0) {
		FUNC6("Error: sys_perf_event_open() syscall returned "
		       "with %d (%s)\n", fd,
		       FUNC9(errno, sbuf, sizeof(sbuf)));
		return -1;
	}

	addr = FUNC1(NULL, page_size, PROT_READ, MAP_SHARED, fd, 0);
	if (addr == (void *)(-1)) {
		FUNC6("Error: mmap() syscall returned with (%s)\n",
		       FUNC9(errno, sbuf, sizeof(sbuf)));
		goto out_close;
	}

	for (n = 0; n < 6; n++) {
		u64 stamp, now, delta;

		stamp = FUNC2(addr);

		for (i = 0; i < loops; i++)
			tmp++;

		now = FUNC2(addr);
		loops *= 10;

		delta = now - stamp;
		FUNC5("%14d: %14Lu\n", n, (long long)delta);

		delta_sum += delta;
	}

	FUNC3(addr, page_size);
	FUNC5("   ");
out_close:
	FUNC0(fd);

	if (!delta_sum)
		return -1;

	return 0;
}