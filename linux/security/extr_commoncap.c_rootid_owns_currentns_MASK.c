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
struct user_namespace {struct user_namespace* parent; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 struct user_namespace* FUNC0 () ; 
 scalar_t__ FUNC1 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 struct user_namespace init_user_ns ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(kuid_t kroot)
{
	struct user_namespace *ns;

	if (!FUNC2(kroot))
		return false;

	for (ns = FUNC0(); ; ns = ns->parent) {
		if (FUNC1(ns, kroot) == 0)
			return true;
		if (ns == &init_user_ns)
			break;
	}

	return false;
}