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
struct aa_profile {int dummy; } ;
struct aa_ns {int /*<<< orphan*/  unconfined; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 struct aa_profile* FUNC0 (int /*<<< orphan*/ ) ; 
 struct aa_ns* FUNC1 (int /*<<< orphan*/ ) ; 
 struct aa_ns* FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 struct aa_profile* FUNC3 (struct aa_ns*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_ns*) ; 
 char* FUNC5 (char const*,size_t,char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct aa_label*) ; 

struct aa_profile *FUNC7(struct aa_label *base,
					const char *fqname, size_t n)
{
	struct aa_profile *profile;
	struct aa_ns *ns;
	const char *name, *ns_name;
	size_t ns_len;

	name = FUNC5(fqname, n, &ns_name, &ns_len);
	if (ns_name) {
		ns = FUNC2(FUNC6(base), ns_name, ns_len);
		if (!ns)
			return NULL;
	} else
		ns = FUNC1(FUNC6(base));

	if (name)
		profile = FUNC3(ns, name, n - (name - fqname));
	else if (ns)
		/* default profile for ns, currently unconfined */
		profile = FUNC0(ns->unconfined);
	else
		profile = NULL;
	FUNC4(ns);

	return profile;
}