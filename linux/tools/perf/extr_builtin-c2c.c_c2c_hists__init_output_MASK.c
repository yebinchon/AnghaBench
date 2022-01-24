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
struct perf_hpp_list {int dummy; } ;
struct c2c_fmt {int /*<<< orphan*/  fmt; } ;

/* Variables and functions */
 struct c2c_fmt* FUNC0 (char*) ; 
 int FUNC1 (struct perf_hpp_list*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_hpp_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct perf_hpp_list *hpp_list, char *name)
{
	struct c2c_fmt *c2c_fmt = FUNC0(name);

	if (!c2c_fmt) {
		FUNC3();
		return FUNC1(hpp_list, name);
	}

	FUNC2(hpp_list, &c2c_fmt->fmt);
	return 0;
}