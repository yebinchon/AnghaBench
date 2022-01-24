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
struct strlist {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERANGE ; 
 int MAX_EVENT_INDEX ; 
 int FUNC0 (char*,size_t,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct strlist*,char*) ; 
 char* FUNC7 (char*,char*) ; 

__attribute__((used)) static int FUNC8(char *buf, size_t len, const char *base,
			      struct strlist *namelist, bool ret_event,
			      bool allow_suffix)
{
	int i, ret;
	char *p, *nbase;

	if (*base == '.')
		base++;
	nbase = FUNC5(base);
	if (!nbase)
		return -ENOMEM;

	/* Cut off the dot suffixes (e.g. .const, .isra) and version suffixes */
	p = FUNC7(nbase, ".@");
	if (p && p != nbase)
		*p = '\0';

	/* Try no suffix number */
	ret = FUNC0(buf, len, "%s%s", nbase, ret_event ? "__return" : "");
	if (ret < 0) {
		FUNC3("snprintf() failed: %d\n", ret);
		goto out;
	}
	if (!FUNC6(namelist, buf))
		goto out;

	if (!allow_suffix) {
		FUNC4("Error: event \"%s\" already exists.\n"
			   " Hint: Remove existing event by 'perf probe -d'\n"
			   "       or force duplicates by 'perf probe -f'\n"
			   "       or set 'force=yes' in BPF source.\n",
			   buf);
		ret = -EEXIST;
		goto out;
	}

	/* Try to add suffix */
	for (i = 1; i < MAX_EVENT_INDEX; i++) {
		ret = FUNC0(buf, len, "%s_%d", nbase, i);
		if (ret < 0) {
			FUNC3("snprintf() failed: %d\n", ret);
			goto out;
		}
		if (!FUNC6(namelist, buf))
			break;
	}
	if (i == MAX_EVENT_INDEX) {
		FUNC4("Too many events are on the same function.\n");
		ret = -ERANGE;
	}

out:
	FUNC1(nbase);

	/* Final validation */
	if (ret >= 0 && !FUNC2(buf)) {
		FUNC4("Internal error: \"%s\" is an invalid event name.\n",
			   buf);
		ret = -EINVAL;
	}

	return ret;
}