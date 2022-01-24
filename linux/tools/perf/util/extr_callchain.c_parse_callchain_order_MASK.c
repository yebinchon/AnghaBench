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
struct TYPE_2__ {int order_set; int /*<<< orphan*/  order; } ;

/* Variables and functions */
 int /*<<< orphan*/  ORDER_CALLEE ; 
 int /*<<< orphan*/  ORDER_CALLER ; 
 TYPE_1__ callchain_param ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const char *value)
{
	if (!FUNC1(value, "caller", FUNC0(value))) {
		callchain_param.order = ORDER_CALLER;
		callchain_param.order_set = true;
		return 0;
	}
	if (!FUNC1(value, "callee", FUNC0(value))) {
		callchain_param.order = ORDER_CALLEE;
		callchain_param.order_set = true;
		return 0;
	}
	return -1;
}