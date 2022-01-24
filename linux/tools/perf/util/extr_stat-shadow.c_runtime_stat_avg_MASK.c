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
struct saved_value {int /*<<< orphan*/  stats; } ;
struct runtime_stat {int dummy; } ;
typedef  enum stat_type { ____Placeholder_stat_type } stat_type ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ *) ; 
 struct saved_value* FUNC1 (int /*<<< orphan*/ *,int,int,int,int,struct runtime_stat*) ; 

__attribute__((used)) static double FUNC2(struct runtime_stat *st,
			       enum stat_type type, int ctx, int cpu)
{
	struct saved_value *v;

	v = FUNC1(NULL, cpu, false, type, ctx, st);
	if (!v)
		return 0.0;

	return FUNC0(&v->stats);
}