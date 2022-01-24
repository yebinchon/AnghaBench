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
typedef  scalar_t__ u64 ;
struct trace {scalar_t__ base_time; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 double NSEC_PER_MSEC ; 
 size_t FUNC0 (int /*<<< orphan*/ *,char*,double) ; 

__attribute__((used)) static size_t FUNC1(struct trace *trace, u64 tstamp, FILE *fp)
{
	double ts = (double)(tstamp - trace->base_time) / NSEC_PER_MSEC;

	return FUNC0(fp, "%10.3f ", ts);
}