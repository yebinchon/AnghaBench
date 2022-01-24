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

/* Variables and functions */
 int /*<<< orphan*/  __NR_gettid ; 
 int max_cnt ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

__attribute__((used)) static void FUNC3(int cpu)
{
	__u64 start_time;
	int i;

	start_time = FUNC2();
	for (i = 0; i < max_cnt; i++)
		FUNC1(__NR_gettid);
	FUNC0("%d:lpm_perf kmalloc %lld events per sec\n",
	       cpu, max_cnt * 1000000000ll / (FUNC2() - start_time));
}