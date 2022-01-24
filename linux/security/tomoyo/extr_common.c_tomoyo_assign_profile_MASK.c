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
struct tomoyo_profile {int default_config; int /*<<< orphan*/ * pref; int /*<<< orphan*/  config; } ;
struct tomoyo_policy_namespace {struct tomoyo_profile** profile_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY ; 
 int /*<<< orphan*/  CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int TOMOYO_CONFIG_DISABLED ; 
 int /*<<< orphan*/  TOMOYO_CONFIG_USE_DEFAULT ; 
 int TOMOYO_CONFIG_WANT_GRANT_LOG ; 
 int TOMOYO_CONFIG_WANT_REJECT_LOG ; 
 unsigned int const TOMOYO_MAX_PROFILES ; 
 size_t TOMOYO_PREF_MAX_AUDIT_LOG ; 
 size_t TOMOYO_PREF_MAX_LEARNING_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (struct tomoyo_profile*) ; 
 struct tomoyo_profile* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct tomoyo_profile*) ; 
 int /*<<< orphan*/  tomoyo_policy_lock ; 

__attribute__((used)) static struct tomoyo_profile *FUNC7
(struct tomoyo_policy_namespace *ns, const unsigned int profile)
{
	struct tomoyo_profile *ptr;
	struct tomoyo_profile *entry;

	if (profile >= TOMOYO_MAX_PROFILES)
		return NULL;
	ptr = ns->profile_ptr[profile];
	if (ptr)
		return ptr;
	entry = FUNC1(sizeof(*entry), GFP_NOFS);
	if (FUNC4(&tomoyo_policy_lock))
		goto out;
	ptr = ns->profile_ptr[profile];
	if (!ptr && FUNC6(entry)) {
		ptr = entry;
		ptr->default_config = TOMOYO_CONFIG_DISABLED |
			TOMOYO_CONFIG_WANT_GRANT_LOG |
			TOMOYO_CONFIG_WANT_REJECT_LOG;
		FUNC3(ptr->config, TOMOYO_CONFIG_USE_DEFAULT,
		       sizeof(ptr->config));
		ptr->pref[TOMOYO_PREF_MAX_AUDIT_LOG] =
			CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG;
		ptr->pref[TOMOYO_PREF_MAX_LEARNING_ENTRY] =
			CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY;
		FUNC2(); /* Avoid out-of-order execution. */
		ns->profile_ptr[profile] = ptr;
		entry = NULL;
	}
	FUNC5(&tomoyo_policy_lock);
 out:
	FUNC0(entry);
	return ptr;
}