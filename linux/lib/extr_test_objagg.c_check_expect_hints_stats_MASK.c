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
struct expect_stats {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct objagg_stats const*) ; 
 int FUNC1 (struct objagg_stats const*) ; 
 int FUNC2 (struct objagg_stats const*,struct expect_stats const*,char const**) ; 
 struct objagg_stats* FUNC3 (struct objagg_hints*) ; 
 int /*<<< orphan*/  FUNC4 (struct objagg_stats const*) ; 

__attribute__((used)) static int FUNC5(struct objagg_hints *objagg_hints,
				    const struct expect_stats *expect_stats,
				    const char **errmsg)
{
	const struct objagg_stats *stats;
	int err;

	stats = FUNC3(objagg_hints);
	if (FUNC0(stats))
		return FUNC1(stats);
	err = FUNC2(stats, expect_stats, errmsg);
	FUNC4(stats);
	return err;
}