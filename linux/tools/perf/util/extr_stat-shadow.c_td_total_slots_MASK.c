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
struct runtime_stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STAT_TOPDOWN_TOTAL_SLOTS ; 
 double FUNC0 (struct runtime_stat*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static double FUNC1(int ctx, int cpu, struct runtime_stat *st)
{
	return FUNC0(st, STAT_TOPDOWN_TOTAL_SLOTS, ctx, cpu);
}