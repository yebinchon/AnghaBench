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
struct user_namespace {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SETGID ; 
 struct user_namespace* FUNC0 () ; 
 scalar_t__ FUNC1 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct user_namespace*) ; 

bool FUNC3(void)
{
	struct user_namespace *user_ns = FUNC0();

	return FUNC1(user_ns, CAP_SETGID) &&
		FUNC2(user_ns);
}