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
struct evlist {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  field_order ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct evlist*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  perf_hpp_list ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,struct evlist*) ; 
 int FUNC6 (struct evlist*) ; 
 char* sort_order ; 
 char* FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(struct evlist *evlist)
{
	char *str;
	const char *sort_keys;
	int ret = 0;

	ret = FUNC6(evlist);
	if (ret)
		return ret;

	sort_keys = sort_order;
	if (sort_keys == NULL) {
		if (FUNC2(field_order)) {
			/*
			 * If user specified field order but no sort order,
			 * we'll honor it and not add default sort orders.
			 */
			return 0;
		}

		sort_keys = FUNC1(evlist);
	}

	str = FUNC7(sort_keys);
	if (str == NULL) {
		FUNC3("Not enough memory to setup sort keys");
		return -ENOMEM;
	}

	/*
	 * Prepend overhead fields for backward compatibility.
	 */
	if (!FUNC2(field_order)) {
		str = FUNC4(str);
		if (str == NULL) {
			FUNC3("Not enough memory to setup overhead keys");
			return -ENOMEM;
		}
	}

	ret = FUNC5(&perf_hpp_list, str, evlist);

	FUNC0(str);
	return ret;
}