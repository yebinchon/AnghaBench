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
struct stat {size_t st_size; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int) ; 
 int debug_opt ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 char* filename ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC8 (int,struct stat*) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  grammar_name ; 
 char* headername ; 
 char* FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (char**,char**,int) ; 
 int FUNC12 (char*,int /*<<< orphan*/ ) ; 
 char* outputname ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 size_t FUNC15 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC17 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 char* FUNC20 (char*,char) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int verbose_opt ; 

int FUNC22(int argc, char **argv)
{
	struct stat st;
	ssize_t readlen;
	FILE *out, *hdr;
	char *buffer, *p;
	char *kbuild_verbose;
	int fd;

	kbuild_verbose = FUNC9("KBUILD_VERBOSE");
	if (kbuild_verbose)
		verbose_opt = FUNC0(kbuild_verbose);

	while (argc > 4) {
		if (FUNC18(argv[1], "-v") == 0)
			verbose_opt = true;
		else if (FUNC18(argv[1], "-d") == 0)
			debug_opt = true;
		else
			break;
		FUNC11(&argv[1], &argv[2], (argc - 2) * sizeof(char *));
		argc--;
	}

	if (argc != 4) {
		FUNC7(stderr, "Format: %s [-v] [-d] <grammar-file> <c-file> <hdr-file>\n",
			argv[0]);
		FUNC4(2);
	}

	filename = argv[1];
	outputname = argv[2];
	headername = argv[3];

	fd = FUNC12(filename, O_RDONLY);
	if (fd < 0) {
		FUNC14(filename);
		FUNC4(1);
	}

	if (FUNC8(fd, &st) < 0) {
		FUNC14(filename);
		FUNC4(1);
	}

	if (!(buffer = FUNC10(st.st_size + 1))) {
		FUNC14(NULL);
		FUNC4(1);
	}

	if ((readlen = FUNC15(fd, buffer, st.st_size)) < 0) {
		FUNC14(filename);
		FUNC4(1);
	}

	if (FUNC2(fd) < 0) {
		FUNC14(filename);
		FUNC4(1);
	}

	if (readlen != st.st_size) {
		FUNC7(stderr, "%s: Short read\n", filename);
		FUNC4(1);
	}

	p = FUNC20(argv[1], '/');
	p = p ? p + 1 : argv[1];
	grammar_name = FUNC19(p);
	if (!p) {
		FUNC14(NULL);
		FUNC4(1);
	}
	p = FUNC17(grammar_name, '.');
	if (p)
		*p = '\0';

	buffer[readlen] = 0;
	FUNC21(buffer, buffer + readlen);
	FUNC1();
	FUNC13();
	FUNC3();

	out = FUNC6(outputname, "w");
	if (!out) {
		FUNC14(outputname);
		FUNC4(1);
	}

	hdr = FUNC6(headername, "w");
	if (!hdr) {
		FUNC14(headername);
		FUNC4(1);
	}

	FUNC16(out, hdr);

	if (FUNC5(out) < 0) {
		FUNC14(outputname);
		FUNC4(1);
	}

	if (FUNC5(hdr) < 0) {
		FUNC14(headername);
		FUNC4(1);
	}

	return 0;
}