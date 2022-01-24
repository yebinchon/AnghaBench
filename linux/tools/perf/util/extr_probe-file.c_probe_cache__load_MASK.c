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
struct probe_cache_entry {int sdt; int /*<<< orphan*/  tevlist; int /*<<< orphan*/  node; int /*<<< orphan*/  pev; scalar_t__ spev; } ;
struct probe_cache {int /*<<< orphan*/  entries; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int MAX_CMDLEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct probe_cache_entry*) ; 
 struct probe_cache_entry* FUNC9 (int /*<<< orphan*/ *) ; 
 char* FUNC10 (char*,char) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC13(struct probe_cache *pcache)
{
	struct probe_cache_entry *entry = NULL;
	char buf[MAX_CMDLEN], *p;
	int ret = 0, fddup;
	FILE *fp;

	fddup = FUNC1(pcache->fd);
	if (fddup < 0)
		return -errno;
	fp = FUNC3(fddup, "r");
	if (!fp) {
		FUNC0(fddup);
		return -EINVAL;
	}

	while (!FUNC4(fp)) {
		if (!FUNC5(buf, MAX_CMDLEN, fp))
			break;
		p = FUNC10(buf, '\n');
		if (p)
			*p = '\0';
		/* #perf_probe_event or %sdt_event */
		if (buf[0] == '#' || buf[0] == '%') {
			entry = FUNC9(NULL);
			if (!entry) {
				ret = -ENOMEM;
				goto out;
			}
			if (buf[0] == '%')
				entry->sdt = true;
			entry->spev = FUNC11(buf + 1);
			if (entry->spev)
				ret = FUNC7(buf + 1,
								&entry->pev);
			else
				ret = -ENOMEM;
			if (ret < 0) {
				FUNC8(entry);
				goto out;
			}
			FUNC6(&entry->node, &pcache->entries);
		} else {	/* trace_probe_event */
			if (!entry) {
				ret = -EINVAL;
				goto out;
			}
			FUNC12(entry->tevlist, buf);
		}
	}
out:
	FUNC2(fp);
	return ret;
}