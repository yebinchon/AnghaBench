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
struct objagg_stats {int dummy; } ;
struct objagg_hints {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct objagg_stats const*) ; 
 int /*<<< orphan*/  FUNC1 (struct objagg_stats const*) ; 
 struct objagg_stats* FUNC2 (struct objagg_hints*) ; 
 int /*<<< orphan*/  FUNC3 (struct objagg_stats const*) ; 

__attribute__((used)) static void FUNC4(struct objagg_hints *objagg_hints)
{
	const struct objagg_stats *stats;

	stats = FUNC2(objagg_hints);
	if (FUNC0(stats))
		return;
	FUNC1(stats);
	FUNC3(stats);
}