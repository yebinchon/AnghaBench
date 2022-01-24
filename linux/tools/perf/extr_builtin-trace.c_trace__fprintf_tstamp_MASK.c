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
struct trace {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (struct trace*,scalar_t__,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static size_t FUNC2(struct trace *trace, u64 tstamp, FILE *fp)
{
	if (tstamp > 0)
		return FUNC0(trace, tstamp, fp);

	return FUNC1(fp, "         ? ");
}