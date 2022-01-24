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
struct TYPE_2__ {int branch_callstack; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCKEY_ADDRESS ; 
 int /*<<< orphan*/  CCKEY_FUNCTION ; 
 int /*<<< orphan*/  CCKEY_SRCLINE ; 
 TYPE_1__ callchain_param ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const char *value)
{
	if (!FUNC1(value, "function", FUNC0(value))) {
		callchain_param.key = CCKEY_FUNCTION;
		return 0;
	}
	if (!FUNC1(value, "address", FUNC0(value))) {
		callchain_param.key = CCKEY_ADDRESS;
		return 0;
	}
	if (!FUNC1(value, "srcline", FUNC0(value))) {
		callchain_param.key = CCKEY_SRCLINE;
		return 0;
	}
	if (!FUNC1(value, "branch", FUNC0(value))) {
		callchain_param.branch_callstack = 1;
		return 0;
	}
	return -1;
}