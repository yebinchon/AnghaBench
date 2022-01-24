#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ tv_sec; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned long,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (double,unsigned long) ; 
 TYPE_1__ runtime ; 
 int /*<<< orphan*/  silent ; 
 double FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  throughput_stats ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long avg = FUNC0(&throughput_stats);
	double stddev = FUNC3(&throughput_stats);

	FUNC1("%sAveraged %ld operations/sec (+- %.2f%%), total secs = %d\n",
	       !silent ? "\n" : "", avg, FUNC2(stddev, avg),
	       (int) runtime.tv_sec);
}