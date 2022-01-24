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
struct dso {scalar_t__ symtab_type; char* long_name; scalar_t__ has_build_id; } ;
typedef  int /*<<< orphan*/  linkname ;

/* Variables and functions */
 scalar_t__ DSO_BINARY_TYPE__KALLSYMS ; 
 int /*<<< orphan*/  DSO__NAME_KALLSYMS ; 
 int ENOMEM ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  R_OK ; 
 int SBUILD_ID_SIZE ; 
 int SYMBOL_ANNOTATE_ERRNO__NO_VMLINUX ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (struct dso*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct dso*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct dso *dso, char *filename, size_t filename_size)
{
	char linkname[PATH_MAX];
	char *build_id_filename;
	char *build_id_path = NULL;
	char *pos;

	if (dso->symtab_type == DSO_BINARY_TYPE__KALLSYMS &&
	    !FUNC4(dso))
		return SYMBOL_ANNOTATE_ERRNO__NO_VMLINUX;

	build_id_filename = FUNC3(dso, NULL, 0, false);
	if (build_id_filename) {
		FUNC0(filename, filename_size, build_id_filename);
		FUNC5(build_id_filename);
	} else {
		if (dso->has_build_id)
			return ENOMEM;
		goto fallback;
	}

	build_id_path = FUNC7(filename);
	if (!build_id_path)
		return ENOMEM;

	/*
	 * old style build-id cache has name of XX/XXXXXXX.. while
	 * new style has XX/XXXXXXX../{elf,kallsyms,vdso}.
	 * extract the build-id part of dirname in the new style only.
	 */
	pos = FUNC9(build_id_path, '/');
	if (pos && FUNC8(pos) < SBUILD_ID_SIZE - 2)
		FUNC2(build_id_path);

	if (FUNC4(dso) ||
	    FUNC6(build_id_path, linkname, sizeof(linkname)) < 0 ||
	    FUNC10(linkname, DSO__NAME_KALLSYMS) ||
	    FUNC1(filename, R_OK)) {
fallback:
		/*
		 * If we don't have build-ids or the build-id file isn't in the
		 * cache, or is just a kallsyms file, well, lets hope that this
		 * DSO is the same as when 'perf record' ran.
		 */
		FUNC0(filename, filename_size, dso->long_name);
	}

	FUNC5(build_id_path);
	return 0;
}