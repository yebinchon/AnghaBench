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
struct aa_ns {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  CAP_MAC_ADMIN ; 
 int aa_g_lock_policy ; 
 struct user_namespace* FUNC1 () ; 
 int FUNC2 (struct user_namespace*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct aa_ns*) ; 

bool FUNC4(struct aa_ns *ns)
{
	struct user_namespace *user_ns = FUNC1();
	bool capable = FUNC2(user_ns, CAP_MAC_ADMIN);

	FUNC0("cap_mac_admin? %d\n", capable);
	FUNC0("policy locked? %d\n", aa_g_lock_policy);

	return FUNC3(ns) && capable && !aa_g_lock_policy;
}