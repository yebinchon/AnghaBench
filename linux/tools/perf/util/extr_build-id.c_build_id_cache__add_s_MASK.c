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
struct nsinfo {scalar_t__ need_setns; } ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  F_OK ; 
 size_t PATH_MAX ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char**,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*,struct nsinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 char* FUNC4 (char const*,char const*,struct nsinfo*,int,int) ; 
 char* FUNC5 (char const*,struct nsinfo*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,size_t const) ; 
 char const* buildid_dir ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 scalar_t__ FUNC8 (char const*,char*,struct nsinfo*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 scalar_t__ FUNC13 (char*,int) ; 
 char* FUNC14 (char const*,struct nsinfo*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 char* FUNC16 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC17 (char const*) ; 
 scalar_t__ FUNC18 (char*,char const*,int) ; 
 char* FUNC19 (char*,char) ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 scalar_t__ FUNC21 (char*) ; 
 char* FUNC22 (size_t const) ; 
 int /*<<< orphan*/  FUNC23 (char**) ; 

int FUNC24(const char *sbuild_id, const char *name,
			  struct nsinfo *nsi, bool is_kallsyms, bool is_vdso)
{
	const size_t size = PATH_MAX;
	char *realname = NULL, *filename = NULL, *dir_name = NULL,
	     *linkname = FUNC22(size), *tmp;
	char *debugfile = NULL;
	int err = -1;

	if (!is_kallsyms) {
		if (!is_vdso)
			realname = FUNC14(name, nsi);
		else
			realname = FUNC16(name, NULL);
		if (!realname)
			goto out_free;
	}

	dir_name = FUNC4(sbuild_id, name, nsi, is_kallsyms,
					    is_vdso);
	if (!dir_name)
		goto out_free;

	/* Remove old style build-id cache */
	if (FUNC10(dir_name))
		if (FUNC21(dir_name))
			goto out_free;

	if (FUNC13(dir_name, 0755))
		goto out_free;

	/* Save the allocated buildid dirname */
	if (FUNC1(&filename, "%s/%d", dir_name,
		     FUNC3(is_kallsyms, is_vdso,
		     false)) < 0) {
		filename = NULL;
		goto out_free;
	}

	if (FUNC0(filename, F_OK)) {
		if (is_kallsyms) {
			if (FUNC7("/proc/kallsyms", filename))
				goto out_free;
		} else if (nsi && nsi->need_setns) {
			if (FUNC8(name, filename, nsi))
				goto out_free;
		} else if (FUNC11(realname, filename) && errno != EEXIST &&
				FUNC7(name, filename))
			goto out_free;
	}

	/* Some binaries are stripped, but have .debug files with their symbol
	 * table.  Check to see if we can locate one of those, since the elf
	 * file itself may not be very useful to users of our tools without a
	 * symtab.
	 */
	if (!is_kallsyms && !is_vdso &&
	    FUNC18(".ko", name + FUNC17(name) - 3, 3)) {
		debugfile = FUNC5(sbuild_id, nsi);
		if (debugfile) {
			FUNC23(&filename);
			if (FUNC1(&filename, "%s/%d", dir_name,
			    FUNC3(false, false, true)) < 0) {
				filename = NULL;
				goto out_free;
			}
			if (FUNC0(filename, F_OK)) {
				if (nsi && nsi->need_setns) {
					if (FUNC8(debugfile, filename,
							nsi))
						goto out_free;
				} else if (FUNC11(debugfile, filename) &&
						errno != EEXIST &&
						FUNC7(debugfile, filename))
					goto out_free;
			}
		}
	}

	if (!FUNC6(sbuild_id, linkname, size))
		goto out_free;
	tmp = FUNC19(linkname, '/');
	*tmp = '\0';

	if (FUNC0(linkname, X_OK) && FUNC13(linkname, 0755))
		goto out_free;

	*tmp = '/';
	tmp = dir_name + FUNC17(buildid_dir) - 5;
	FUNC12(tmp, "../..", 5);

	if (FUNC20(tmp, linkname) == 0)
		err = 0;

	/* Update SDT cache : error is just warned */
	if (realname &&
	    FUNC2(sbuild_id, realname, nsi) < 0)
		FUNC15("Failed to update/scan SDT cache for %s\n", realname);

out_free:
	if (!is_kallsyms)
		FUNC9(realname);
	FUNC9(filename);
	FUNC9(debugfile);
	FUNC9(dir_name);
	FUNC9(linkname);
	return err;
}