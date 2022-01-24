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
typedef  unsigned int time_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  STATS_INTERVAL_S ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(unsigned int map_fd, unsigned int kill_after_s)
{
	time_t started_at = FUNC4(NULL);
	__u64 value = 0;
	int key = 0;


	while (!kill_after_s || FUNC4(NULL) - started_at <= kill_after_s) {
		FUNC3(STATS_INTERVAL_S);

		FUNC0(FUNC1(map_fd, &key, &value) == 0);

		FUNC2("icmp \"packet too big\" sent: %10llu pkts\n", value);
	}
}