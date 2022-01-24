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
struct probe_cache {int dummy; } ;
struct nsinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct probe_cache* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct probe_cache*) ; 
 int FUNC3 (struct probe_cache*) ; 
 int FUNC4 (struct probe_cache*,char const*,struct nsinfo*) ; 

struct probe_cache *FUNC5(const char *target, struct nsinfo *nsi)
{
	struct probe_cache *pcache = FUNC1();
	int ret;

	if (!pcache)
		return NULL;

	ret = FUNC4(pcache, target, nsi);
	if (ret < 0) {
		FUNC0("Cache open error: %d\n", ret);
		goto out_err;
	}

	ret = FUNC3(pcache);
	if (ret < 0) {
		FUNC0("Cache read error: %d\n", ret);
		goto out_err;
	}

	return pcache;

out_err:
	FUNC2(pcache);
	return NULL;
}