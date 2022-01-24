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
typedef  int /*<<< orphan*/  to_dir ;
typedef  int /*<<< orphan*/  from_dir ;
typedef  int /*<<< orphan*/  dir ;

/* Variables and functions */
 int /*<<< orphan*/  DSO__NAME_KCORE ; 
 int PATH_MAX ; 
 int SBUILD_ID_SIZE ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  buildid_dir ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 char* FUNC10 (char*,char) ; 

__attribute__((used)) static int FUNC11(const char *filename, bool force)
{
	char dir[32], sbuildid[SBUILD_ID_SIZE];
	char from_dir[PATH_MAX], to_dir[PATH_MAX];
	char *p;

	FUNC9(from_dir, filename, sizeof(from_dir));

	p = FUNC10(from_dir, '/');
	if (!p || FUNC8(p + 1, "kcore"))
		return -1;
	*p = '\0';

	if (FUNC0(from_dir, sbuildid) < 0)
		return -1;

	FUNC7(to_dir, sizeof(to_dir), "%s/%s/%s",
		  buildid_dir, DSO__NAME_KCORE, sbuildid);

	if (!force &&
	    !FUNC2(from_dir, to_dir, sizeof(to_dir))) {
		FUNC5("same kcore found in %s\n", to_dir);
		return 0;
	}

	if (FUNC1(dir, sizeof(dir)))
		return -1;

	FUNC7(to_dir, sizeof(to_dir), "%s/%s/%s/%s",
		  buildid_dir, DSO__NAME_KCORE, sbuildid, dir);

	if (FUNC4(to_dir, 0755))
		return -1;

	if (FUNC3(from_dir, to_dir)) {
		/* Remove YYYYmmddHHMMSShh directory */
		if (!FUNC6(to_dir)) {
			p = FUNC10(to_dir, '/');
			if (p)
				*p = '\0';
			/* Try to remove buildid directory */
			if (!FUNC6(to_dir)) {
				p = FUNC10(to_dir, '/');
				if (p)
					*p = '\0';
				/* Try to remove [kernel.kcore] directory */
				FUNC6(to_dir);
			}
		}
		return -1;
	}

	FUNC5("kcore added to build-id cache directory %s\n", to_dir);

	return 0;
}