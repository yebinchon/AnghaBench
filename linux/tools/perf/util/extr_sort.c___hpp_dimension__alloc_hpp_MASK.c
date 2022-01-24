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
struct perf_hpp_fmt {int level; int /*<<< orphan*/  free; int /*<<< orphan*/  sort_list; int /*<<< orphan*/  list; } ;
struct hpp_dimension {int /*<<< orphan*/  fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hpp_free ; 
 struct perf_hpp_fmt* FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct perf_hpp_fmt *FUNC2(struct hpp_dimension *hd,
						       int level)
{
	struct perf_hpp_fmt *fmt;

	fmt = FUNC1(hd->fmt, sizeof(*fmt));
	if (fmt) {
		FUNC0(&fmt->list);
		FUNC0(&fmt->sort_list);
		fmt->free = hpp_free;
		fmt->level = level;
	}

	return fmt;
}