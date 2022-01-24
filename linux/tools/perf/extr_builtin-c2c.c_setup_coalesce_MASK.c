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
struct TYPE_2__ {scalar_t__ display; int /*<<< orphan*/  cl_output; int /*<<< orphan*/  cl_resort; int /*<<< orphan*/  cl_sort; } ;

/* Variables and functions */
 scalar_t__ DISPLAY_RMT ; 
 scalar_t__ DISPLAY_TOT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ c2c ; 
 char* coalesce_default ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const char *coalesce, bool no_source)
{
	const char *c = coalesce ?: coalesce_default;

	if (FUNC0(&c2c.cl_sort, "offset,%s", c) < 0)
		return -ENOMEM;

	if (FUNC1(c2c.cl_sort, no_source))
		return -1;

	if (FUNC0(&c2c.cl_resort, "offset,%s",
		     c2c.display == DISPLAY_TOT ?
		     "tot_hitm" :
		     c2c.display == DISPLAY_RMT ?
		     "rmt_hitm,lcl_hitm" :
		     "lcl_hitm,rmt_hitm") < 0)
		return -ENOMEM;

	FUNC2("coalesce sort   fields: %s\n", c2c.cl_sort);
	FUNC2("coalesce resort fields: %s\n", c2c.cl_resort);
	FUNC2("coalesce output fields: %s\n", c2c.cl_output);
	return 0;
}