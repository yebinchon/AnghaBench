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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2()
{
	FUNC1("usage: ./bench\n");
	FUNC1("Options:\n");
	FUNC1(" -l, --load=<long int>\t\tinitial load time in us\n");
	FUNC1(" -s, --sleep=<long int>\t\tinitial sleep time in us\n");
	FUNC1(" -x, --load-step=<long int>\ttime to be added to load time, in us\n");
	FUNC1(" -y, --sleep-step=<long int>\ttime to be added to sleep time, in us\n");
	FUNC1(" -c, --cpu=<cpu #>\t\t\tCPU Nr. to use, starting at 0\n");
	FUNC1(" -p, --prio=<priority>\t\t\tscheduler priority, HIGH, LOW or DEFAULT\n");
	FUNC1(" -g, --governor=<governor>\t\tcpufreq governor to test\n");
	FUNC1(" -n, --cycles=<int>\t\t\tload/sleep cycles\n");
	FUNC1(" -r, --rounds<int>\t\t\tload/sleep rounds\n");
	FUNC1(" -f, --file=<configfile>\t\tconfig file to use\n");
	FUNC1(" -o, --output=<dir>\t\t\toutput path. Filename will be OUTPUTPATH/benchmark_TIMESTAMP.log\n");
	FUNC1(" -v, --verbose\t\t\t\tverbose output on/off\n");
	FUNC1(" -h, --help\t\t\t\tPrint this help screen\n");
	FUNC0(1);
}