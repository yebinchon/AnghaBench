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
typedef  int /*<<< orphan*/  u64 ;
struct saved_value {int /*<<< orphan*/  stats; } ;
struct runtime_stat {int dummy; } ;
typedef  enum stat_type { ____Placeholder_stat_type } stat_type ;

/* Variables and functions */
 struct saved_value* FUNC0 (int /*<<< orphan*/ *,int,int,int,int,struct runtime_stat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct runtime_stat *st,
				enum stat_type type,
				int ctx, int cpu, u64 count)
{
	struct saved_value *v = FUNC0(NULL, cpu, true,
						   type, ctx, st);

	if (v)
		FUNC1(&v->stats, count);
}