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
 double FUNC0 (double) ; 
 double FUNC1 (int,int,struct runtime_stat*) ; 
 double FUNC2 (int,int,struct runtime_stat*) ; 
 double FUNC3 (int,int,struct runtime_stat*) ; 

__attribute__((used)) static double FUNC4(int ctx, int cpu, struct runtime_stat *st)
{
	double sum = (FUNC2(ctx, cpu, st) +
		      FUNC1(ctx, cpu, st) +
		      FUNC3(ctx, cpu, st));
	if (sum == 0)
		return 0;
	return FUNC0(1.0 - sum);
}