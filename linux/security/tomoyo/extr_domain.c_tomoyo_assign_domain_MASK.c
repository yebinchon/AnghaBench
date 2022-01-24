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
struct tomoyo_request_info {int granted; } ;
struct tomoyo_domain_info {size_t profile; int /*<<< orphan*/  group; int /*<<< orphan*/  domainname; int /*<<< orphan*/  list; int /*<<< orphan*/  acl_info_list; TYPE_1__* ns; } ;
typedef  int /*<<< orphan*/  e ;
struct TYPE_2__ {int /*<<< orphan*/ * profile_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TOMOYO_EXEC_TMPSIZE ; 
 int /*<<< orphan*/  TOMOYO_MAC_FILE_EXECUTE ; 
 int TOMOYO_MAX_ACL_GROUPS ; 
 int /*<<< orphan*/  TOMOYO_STAT_POLICY_UPDATES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (char const*) ; 
 struct tomoyo_domain_info* FUNC8 (struct tomoyo_domain_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 struct tomoyo_domain_info* FUNC10 () ; 
 int /*<<< orphan*/  tomoyo_domain_list ; 
 struct tomoyo_domain_info* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct tomoyo_request_info*,struct tomoyo_domain_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char const*) ; 
 scalar_t__ tomoyo_policy_loaded ; 
 int /*<<< orphan*/  tomoyo_policy_lock ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct tomoyo_request_info*,char*,int) ; 

struct tomoyo_domain_info *FUNC18(const char *domainname,
						const bool transit)
{
	struct tomoyo_domain_info e = { };
	struct tomoyo_domain_info *entry = FUNC11(domainname);
	bool created = false;

	if (entry) {
		if (transit) {
			/*
			 * Since namespace is created at runtime, profiles may
			 * not be created by the moment the process transits to
			 * that domain. Do not perform domain transition if
			 * profile for that domain is not yet created.
			 */
			if (tomoyo_policy_loaded &&
			    !entry->ns->profile_ptr[entry->profile])
				return NULL;
		}
		return entry;
	}
	/* Requested domain does not exist. */
	/* Don't create requested domain if domainname is invalid. */
	if (FUNC5(domainname) >= TOMOYO_EXEC_TMPSIZE - 10 ||
	    !FUNC9(domainname))
		return NULL;
	/*
	 * Since definition of profiles and acl_groups may differ across
	 * namespaces, do not inherit "use_profile" and "use_group" settings
	 * by automatically creating requested domain upon domain transition.
	 */
	if (transit && FUNC14(domainname))
		return NULL;
	e.ns = FUNC7(domainname);
	if (!e.ns)
		return NULL;
	/*
	 * "use_profile" and "use_group" settings for automatically created
	 * domains are inherited from current domain. These are 0 for manually
	 * created domains.
	 */
	if (transit) {
		const struct tomoyo_domain_info *domain = FUNC10();

		e.profile = domain->profile;
		FUNC2(e.group, domain->group, sizeof(e.group));
	}
	e.domainname = FUNC12(domainname);
	if (!e.domainname)
		return NULL;
	if (FUNC3(&tomoyo_policy_lock))
		goto out;
	entry = FUNC11(domainname);
	if (!entry) {
		entry = FUNC8(&e, sizeof(e));
		if (entry) {
			FUNC0(&entry->acl_info_list);
			FUNC1(&entry->list, &tomoyo_domain_list);
			created = true;
		}
	}
	FUNC4(&tomoyo_policy_lock);
out:
	FUNC15(e.domainname);
	if (entry && transit) {
		if (created) {
			struct tomoyo_request_info r;
			int i;

			FUNC13(&r, entry,
						 TOMOYO_MAC_FILE_EXECUTE);
			r.granted = false;
			FUNC17(&r, "use_profile %u\n",
					 entry->profile);
			for (i = 0; i < TOMOYO_MAX_ACL_GROUPS; i++)
				if (FUNC6(i, entry->group))
					FUNC17(&r, "use_group %u\n",
							 i);
			FUNC16(TOMOYO_STAT_POLICY_UPDATES);
		}
	}
	return entry;
}