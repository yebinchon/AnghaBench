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
struct strbuf {int dummy; } ;
struct perf_probe_event {int nargs; int /*<<< orphan*/ * args; int /*<<< orphan*/  point; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (char**,char*,char const*,char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct strbuf*,char*,int) ; 
 int FUNC3 (struct strbuf*,char) ; 
 int FUNC4 (struct strbuf*,char*,char const*) ; 
 int FUNC5 (struct strbuf*,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(const char *group, const char *event,
				     struct perf_probe_event *pev,
				     const char *module,
				     struct strbuf *result)
{
	int i, ret;
	char *buf;

	if (FUNC0(&buf, "%s:%s", group, event) < 0)
		return -errno;
	ret = FUNC4(result, "  %-20s (on ", buf);
	FUNC1(buf);
	if (ret)
		return ret;

	/* Synthesize only event probe point */
	buf = FUNC7(&pev->point);
	if (!buf)
		return -ENOMEM;
	ret = FUNC5(result, buf);
	FUNC1(buf);

	if (!ret && module)
		ret = FUNC4(result, " in %s", module);

	if (!ret && pev->nargs > 0) {
		ret = FUNC2(result, " with", 5);
		for (i = 0; !ret && i < pev->nargs; i++) {
			buf = FUNC6(&pev->args[i]);
			if (!buf)
				return -ENOMEM;
			ret = FUNC4(result, " %s", buf);
			FUNC1(buf);
		}
	}
	if (!ret)
		ret = FUNC3(result, ')');

	return ret;
}