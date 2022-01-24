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
struct tomoyo_policy_namespace {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int TOMOYO_EXEC_TMPSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct tomoyo_policy_namespace*) ; 
 struct tomoyo_policy_namespace* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 struct tomoyo_policy_namespace* FUNC6 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct tomoyo_policy_namespace*) ; 
 scalar_t__ FUNC8 (struct tomoyo_policy_namespace*) ; 
 int /*<<< orphan*/  tomoyo_policy_lock ; 

struct tomoyo_policy_namespace *FUNC9(const char *domainname)
{
	struct tomoyo_policy_namespace *ptr;
	struct tomoyo_policy_namespace *entry;
	const char *cp = domainname;
	unsigned int len = 0;

	while (*cp && *cp++ != ' ')
		len++;
	ptr = FUNC6(domainname, len);
	if (ptr)
		return ptr;
	if (len >= TOMOYO_EXEC_TMPSIZE - 10 || !FUNC5(domainname))
		return NULL;
	entry = FUNC1(sizeof(*entry) + len + 1, GFP_NOFS);
	if (!entry)
		return NULL;
	if (FUNC3(&tomoyo_policy_lock))
		goto out;
	ptr = FUNC6(domainname, len);
	if (!ptr && FUNC8(entry)) {
		char *name = (char *) (entry + 1);

		ptr = entry;
		FUNC2(name, domainname, len);
		name[len] = '\0';
		entry->name = name;
		FUNC7(entry);
		entry = NULL;
	}
	FUNC4(&tomoyo_policy_lock);
out:
	FUNC0(entry);
	return ptr;
}