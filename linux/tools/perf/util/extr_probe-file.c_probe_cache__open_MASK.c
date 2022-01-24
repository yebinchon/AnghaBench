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
struct probe_cache {int fd; } ;
struct nsinfo {int dummy; } ;
struct nscookie {int dummy; } ;

/* Variables and functions */
 char* DSO__NAME_KALLSYMS ; 
 int ENOMEM ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int PATH_MAX ; 
 int SBUILD_ID_SIZE ; 
 int FUNC0 (char*,char const*,struct nsinfo*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*) ; 
 char* FUNC2 (char*,char const*,struct nsinfo*,int,int) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct nsinfo*,struct nscookie*) ; 
 int /*<<< orphan*/  FUNC7 (struct nscookie*) ; 
 int FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 
 int FUNC13 (char*,char*) ; 

__attribute__((used)) static int FUNC14(struct probe_cache *pcache, const char *target,
			     struct nsinfo *nsi)
{
	char cpath[PATH_MAX];
	char sbuildid[SBUILD_ID_SIZE];
	char *dir_name = NULL;
	bool is_kallsyms = false;
	int ret, fd;
	struct nscookie nsc;

	if (target && FUNC1(target)) {
		/* This is a cached buildid */
		FUNC12(sbuildid, target, SBUILD_ID_SIZE);
		dir_name = FUNC3(sbuildid, NULL, 0);
		goto found;
	}

	if (!target || !FUNC11(target, DSO__NAME_KALLSYMS)) {
		target = DSO__NAME_KALLSYMS;
		is_kallsyms = true;
		ret = FUNC13("/", sbuildid);
	} else {
		FUNC6(nsi, &nsc);
		ret = FUNC4(target, sbuildid);
		FUNC7(&nsc);
	}

	if (ret < 0) {
		FUNC9("Failed to get build-id from %s.\n", target);
		return ret;
	}

	/* If we have no buildid cache, make it */
	if (!FUNC1(sbuildid)) {
		ret = FUNC0(sbuildid, target, nsi,
					    is_kallsyms, NULL);
		if (ret < 0) {
			FUNC9("Failed to add build-id cache: %s\n", target);
			return ret;
		}
	}

	dir_name = FUNC2(sbuildid, target, nsi, is_kallsyms,
					    false);
found:
	if (!dir_name) {
		FUNC9("Failed to get cache from %s\n", target);
		return -ENOMEM;
	}

	FUNC10(cpath, PATH_MAX, "%s/probes", dir_name);
	fd = FUNC8(cpath, O_CREAT | O_RDWR, 0644);
	if (fd < 0)
		FUNC9("Failed to open cache(%d): %s\n", fd, cpath);
	FUNC5(dir_name);
	pcache->fd = fd;

	return fd;
}