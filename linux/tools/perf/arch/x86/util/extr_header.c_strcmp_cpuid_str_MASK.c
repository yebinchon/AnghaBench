#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t rm_eo; size_t rm_so; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;

/* Variables and functions */
 int /*<<< orphan*/  REG_EXTENDED ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (char const*) ; 
 char const* FUNC6 (char const*,char) ; 

int FUNC7(const char *mapcpuid, const char *id)
{
	regex_t re;
	regmatch_t pmatch[1];
	int match;
	bool full_mapcpuid = FUNC0(mapcpuid);
	bool full_cpuid = FUNC0(id);

	/*
	 * Full CPUID format is required to identify a platform.
	 * Error out if the cpuid string is incomplete.
	 */
	if (full_mapcpuid && !full_cpuid) {
		FUNC1("Invalid CPUID %s. Full CPUID is required, "
			"vendor-family-model-stepping\n", id);
		return 1;
	}

	if (FUNC2(&re, mapcpuid, REG_EXTENDED) != 0) {
		/* Warn unable to generate match particular string. */
		FUNC1("Invalid regular expression %s\n", mapcpuid);
		return 1;
	}

	match = !FUNC3(&re, id, 1, pmatch, 0);
	FUNC4(&re);
	if (match) {
		size_t match_len = (pmatch[0].rm_eo - pmatch[0].rm_so);
		size_t cpuid_len;

		/* If the full CPUID format isn't required,
		 * ignoring the stepping.
		 */
		if (!full_mapcpuid && full_cpuid)
			cpuid_len = FUNC6(id, '-') - id;
		else
			cpuid_len = FUNC5(id);

		/* Verify the entire string matched. */
		if (match_len == cpuid_len)
			return 0;
	}

	return 1;
}