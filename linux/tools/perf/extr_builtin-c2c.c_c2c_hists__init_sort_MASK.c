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
struct perf_hpp_list {int dso; } ;
struct c2c_fmt {int /*<<< orphan*/  fmt; struct c2c_dimension* dim; } ;
struct c2c_dimension {int dummy; } ;

/* Variables and functions */
 struct c2c_dimension dim_dso ; 
 struct c2c_fmt* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_hpp_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct perf_hpp_list*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct perf_hpp_list *hpp_list, char *name)
{
	struct c2c_fmt *c2c_fmt = FUNC0(name);
	struct c2c_dimension *dim;

	if (!c2c_fmt) {
		FUNC2();
		return FUNC3(hpp_list, name, NULL, 0);
	}

	dim = c2c_fmt->dim;
	if (dim == &dim_dso)
		hpp_list->dso = 1;

	FUNC1(hpp_list, &c2c_fmt->fmt);
	return 0;
}