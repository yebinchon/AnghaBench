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
struct trace_array {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct trace_array*,int,int) ; 
 int FUNC4 (struct trace_array*,char*,int) ; 
 int FUNC5 (char*,char*) ; 
 size_t FUNC6 (char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  trace_options ; 
 int /*<<< orphan*/  trace_types_lock ; 

__attribute__((used)) static int FUNC8(struct trace_array *tr, char *option)
{
	char *cmp;
	int neg = 0;
	int ret;
	size_t orig_len = FUNC6(option);
	int len;

	cmp = FUNC7(option);

	len = FUNC5(cmp, "no");
	if (len)
		neg = 1;

	cmp += len;

	FUNC1(&trace_types_lock);

	ret = FUNC0(trace_options, -1, cmp);
	/* If no option could be set, test the specific tracer options */
	if (ret < 0)
		ret = FUNC4(tr, cmp, neg);
	else
		ret = FUNC3(tr, 1 << ret, !neg);

	FUNC2(&trace_types_lock);

	/*
	 * If the first trailing whitespace is replaced with '\0' by strstrip,
	 * turn it back into a space.
	 */
	if (orig_len > FUNC6(option))
		option[FUNC6(option)] = ' ';

	return ret;
}