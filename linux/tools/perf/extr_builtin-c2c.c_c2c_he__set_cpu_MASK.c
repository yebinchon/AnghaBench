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
struct perf_sample {unsigned int cpu; } ;
struct c2c_hist_entry {int /*<<< orphan*/  cpuset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct c2c_hist_entry *c2c_he,
			    struct perf_sample *sample)
{
	if (FUNC0(sample->cpu == (unsigned int) -1,
		      "WARNING: no sample cpu value"))
		return;

	FUNC1(sample->cpu, c2c_he->cpuset);
}