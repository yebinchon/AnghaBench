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
struct TYPE_2__ {double n; } ;
struct saved_value {TYPE_1__ stats; } ;
struct runtime_stat {int dummy; } ;
typedef  enum stat_type { ____Placeholder_stat_type } stat_type ;

/* Variables and functions */
 struct saved_value* FUNC0 (int /*<<< orphan*/ *,int,int,int,int,struct runtime_stat*) ; 

__attribute__((used)) static double FUNC1(struct runtime_stat *st,
			     enum stat_type type, int ctx, int cpu)
{
	struct saved_value *v;

	v = FUNC0(NULL, cpu, false, type, ctx, st);
	if (!v)
		return 0.0;

	return v->stats.n;
}