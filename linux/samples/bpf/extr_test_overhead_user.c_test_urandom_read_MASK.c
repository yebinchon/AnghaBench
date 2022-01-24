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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int,char*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 

__attribute__((used)) static void FUNC7(int cpu)
{
	__u64 start_time;
	char buf[4];
	int i, fd;

	fd = FUNC2("/dev/urandom", O_RDONLY);
	if (fd < 0) {
		FUNC3("couldn't open /dev/urandom\n");
		FUNC1(1);
	}
	start_time = FUNC6();
	for (i = 0; i < MAX_CNT; i++) {
		if (FUNC4(fd, buf, sizeof(buf)) < 0) {
			FUNC3("failed to read from /dev/urandom: %s\n", FUNC5(errno));
			FUNC0(fd);
			return;
		}
	}
	FUNC3("urandom_read:%d: %lld events per sec\n",
	       cpu, MAX_CNT * 1000000000ll / (FUNC6() - start_time));
	FUNC0(fd);
}