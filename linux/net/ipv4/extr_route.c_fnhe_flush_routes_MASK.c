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
struct rtable {int /*<<< orphan*/  dst; } ;
struct fib_nh_exception {int /*<<< orphan*/  fnhe_rth_output; int /*<<< orphan*/  fnhe_rth_input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct rtable* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fib_nh_exception *fnhe)
{
	struct rtable *rt;

	rt = FUNC3(fnhe->fnhe_rth_input);
	if (rt) {
		FUNC0(fnhe->fnhe_rth_input, NULL);
		FUNC1(&rt->dst);
		FUNC2(&rt->dst);
	}
	rt = FUNC3(fnhe->fnhe_rth_output);
	if (rt) {
		FUNC0(fnhe->fnhe_rth_output, NULL);
		FUNC1(&rt->dst);
		FUNC2(&rt->dst);
	}
}