#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  test_file ;
struct TYPE_2__ {int /*<<< orphan*/ * ctx; } ;
struct btf_dump_test_case {char* name; TYPE_1__ opts; } ;
struct btf {int dummy; } ;
typedef  int /*<<< orphan*/  out_file ;
typedef  int /*<<< orphan*/  diff_cmd ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct btf*) ; 
 int FUNC2 (struct btf*) ; 
 int /*<<< orphan*/  R_OK ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btf*) ; 
 struct btf* FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct btf*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (char*) ; 

int FUNC16(int n, struct btf_dump_test_case *test_case)
{
	char test_file[256], out_file[256], diff_cmd[1024];
	struct btf *btf = NULL;
	int err = 0, fd = -1;
	FILE *f = NULL;

	FUNC10(stderr, "Test case #%d (%s): ", n, test_case->name);

	FUNC13(test_file, sizeof(test_file), "%s.o", test_case->name);

	btf = FUNC5(test_file, NULL);
	if (FUNC0(FUNC1(btf),
	    "failed to load test BTF: %ld\n", FUNC2(btf))) {
		err = -FUNC2(btf);
		btf = NULL;
		goto done;
	}

	FUNC13(out_file, sizeof(out_file),
		 "/tmp/%s.output.XXXXXX", test_case->name);
	fd = FUNC11(out_file);
	if (FUNC0(fd < 0, "failed to create temp output file: %d\n", fd)) {
		err = fd;
		goto done;
	}
	f = FUNC9(fd, "w");
	if (FUNC0(f == NULL, "failed to open temp output file: %s(%d)\n",
		  FUNC14(errno), errno)) {
		FUNC7(fd);
		goto done;
	}

	test_case->opts.ctx = f;
	err = FUNC6(btf, &test_case->opts);
	FUNC8(f);
	FUNC7(fd);
	if (FUNC0(err, "failure during C dumping: %d\n", err)) {
		goto done;
	}

	FUNC13(test_file, sizeof(test_file), "progs/%s.c", test_case->name);
	if (FUNC3(test_file, R_OK) == -1)
		/*
		 * When the test is run with O=, kselftest copies TEST_FILES
		 * without preserving the directory structure.
		 */
		FUNC13(test_file, sizeof(test_file), "%s.c",
			test_case->name);
	/*
	 * Diff test output and expected test output, contained between
	 * START-EXPECTED-OUTPUT and END-EXPECTED-OUTPUT lines in test case.
	 * For expected output lines, everything before '*' is stripped out.
	 * Also lines containing comment start and comment end markers are
	 * ignored. 
	 */
	FUNC13(diff_cmd, sizeof(diff_cmd),
		 "awk '/START-EXPECTED-OUTPUT/{out=1;next} "
		 "/END-EXPECTED-OUTPUT/{out=0} "
		 "/\\/\\*|\\*\\//{next} " /* ignore comment start/end lines */
		 "out {sub(/^[ \\t]*\\*/, \"\"); print}' '%s' | diff -u - '%s'",
		 test_file, out_file);
	err = FUNC15(diff_cmd);
	if (FUNC0(err,
		  "differing test output, output=%s, err=%d, diff cmd:\n%s\n",
		  out_file, err, diff_cmd))
		goto done;

	FUNC12(out_file);
	FUNC10(stderr, "OK\n");

done:
	FUNC4(btf);
	return err;
}