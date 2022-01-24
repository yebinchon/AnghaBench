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
typedef  int __u64 ;

/* Variables and functions */
 int MAX_CNT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int,char*,int) ; 

__attribute__((used)) static void FUNC7(int cpu)
{
	__u64 start_time;
	char buf[] = "test\n";
	int i, fd;

	fd = FUNC2("/proc/self/comm", O_WRONLY|O_TRUNC);
	if (fd < 0) {
		FUNC3("couldn't open /proc\n");
		FUNC1(1);
	}
	start_time = FUNC5();
	for (i = 0; i < MAX_CNT; i++) {
		if (FUNC6(fd, buf, sizeof(buf)) < 0) {
			FUNC3("task rename failed: %s\n", FUNC4(errno));
			FUNC0(fd);
			return;
		}
	}
	FUNC3("task_rename:%d: %lld events per sec\n",
	       cpu, MAX_CNT * 1000000000ll / (FUNC5() - start_time));
	FUNC0(fd);
}