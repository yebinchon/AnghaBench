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
struct strbuf {char* buf; } ;
struct perf_probe_event {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int FUNC0 (char const*,char const*,struct perf_probe_event*,char const*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

int FUNC4(const char *group, const char *event,
			  struct perf_probe_event *pev,
			  const char *module, bool use_stdout)
{
	struct strbuf buf = STRBUF_INIT;
	int ret;

	ret = FUNC0(group, event, pev, module, &buf);
	if (ret >= 0) {
		if (use_stdout)
			FUNC2("%s\n", buf.buf);
		else
			FUNC1("%s\n", buf.buf);
	}
	FUNC3(&buf);

	return ret;
}