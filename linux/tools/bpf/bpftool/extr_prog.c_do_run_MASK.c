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
struct bpf_prog_test_run_attr {unsigned int data_size_out; unsigned int ctx_size_out; int prog_fd; unsigned int repeat; int retval; int duration; void* ctx_out; void* data_out; void* ctx_in; void* data_in; int /*<<< orphan*/  ctx_size_in; int /*<<< orphan*/  data_size_in; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned int SZ_32K ; 
 int FUNC3 (void**,unsigned int) ; 
 int FUNC4 (struct bpf_prog_test_run_attr*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int FUNC9 (char*,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (void*,int,char*,char*) ; 
 int FUNC16 (int*,char***) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC17 (int /*<<< orphan*/ ) ; 
 void* FUNC18 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(int argc, char **argv)
{
	char *data_fname_in = NULL, *data_fname_out = NULL;
	char *ctx_fname_in = NULL, *ctx_fname_out = NULL;
	struct bpf_prog_test_run_attr test_attr = {0};
	const unsigned int default_size = SZ_32K;
	void *data_in = NULL, *data_out = NULL;
	void *ctx_in = NULL, *ctx_out = NULL;
	unsigned int repeat = 1;
	int fd, err;

	if (!FUNC2(4))
		return -1;

	fd = FUNC16(&argc, &argv);
	if (fd < 0)
		return -1;

	while (argc) {
		if (FUNC6(*argv, "data_in", "data_out",
					 "data_size_out", NULL))
			return -1;
		if (FUNC6(*argv, "ctx_in", "ctx_out",
					 "ctx_size_out", NULL))
			return -1;

		if (FUNC10(*argv, "data_in")) {
			FUNC1();
			if (!FUNC2(1))
				return -1;

			data_fname_in = FUNC0();
			if (FUNC5(data_fname_in, ctx_fname_in))
				return -1;
		} else if (FUNC10(*argv, "data_out")) {
			FUNC1();
			if (!FUNC2(1))
				return -1;

			data_fname_out = FUNC0();
		} else if (FUNC10(*argv, "data_size_out")) {
			char *endptr;

			FUNC1();
			if (!FUNC2(1))
				return -1;

			test_attr.data_size_out = FUNC18(*argv, &endptr, 0);
			if (*endptr) {
				FUNC14("can't parse %s as output data size",
				      *argv);
				return -1;
			}
			FUNC1();
		} else if (FUNC10(*argv, "ctx_in")) {
			FUNC1();
			if (!FUNC2(1))
				return -1;

			ctx_fname_in = FUNC0();
			if (FUNC5(data_fname_in, ctx_fname_in))
				return -1;
		} else if (FUNC10(*argv, "ctx_out")) {
			FUNC1();
			if (!FUNC2(1))
				return -1;

			ctx_fname_out = FUNC0();
		} else if (FUNC10(*argv, "ctx_size_out")) {
			char *endptr;

			FUNC1();
			if (!FUNC2(1))
				return -1;

			test_attr.ctx_size_out = FUNC18(*argv, &endptr, 0);
			if (*endptr) {
				FUNC14("can't parse %s as output context size",
				      *argv);
				return -1;
			}
			FUNC1();
		} else if (FUNC10(*argv, "repeat")) {
			char *endptr;

			FUNC1();
			if (!FUNC2(1))
				return -1;

			repeat = FUNC18(*argv, &endptr, 0);
			if (*endptr) {
				FUNC14("can't parse %s as repeat number",
				      *argv);
				return -1;
			}
			FUNC1();
		} else {
			FUNC14("expected no more arguments, 'data_in', 'data_out', 'data_size_out', 'ctx_in', 'ctx_out', 'ctx_size_out' or 'repeat', got: '%s'?",
			      *argv);
			return -1;
		}
	}

	err = FUNC9(data_fname_in, &data_in, &test_attr.data_size_in);
	if (err)
		return -1;

	if (data_in) {
		if (!test_attr.data_size_out)
			test_attr.data_size_out = default_size;
		err = FUNC3(&data_out, test_attr.data_size_out);
		if (err)
			goto free_data_in;
	}

	err = FUNC9(ctx_fname_in, &ctx_in, &test_attr.ctx_size_in);
	if (err)
		goto free_data_out;

	if (ctx_in) {
		if (!test_attr.ctx_size_out)
			test_attr.ctx_size_out = default_size;
		err = FUNC3(&ctx_out, test_attr.ctx_size_out);
		if (err)
			goto free_ctx_in;
	}

	test_attr.prog_fd	= fd;
	test_attr.repeat	= repeat;
	test_attr.data_in	= data_in;
	test_attr.data_out	= data_out;
	test_attr.ctx_in	= ctx_in;
	test_attr.ctx_out	= ctx_out;

	err = FUNC4(&test_attr);
	if (err) {
		FUNC14("failed to run program: %s", FUNC17(errno));
		goto free_ctx_out;
	}

	err = 0;

	if (json_output)
		FUNC12(json_wtr);	/* root */

	/* Do not exit on errors occurring when printing output data/context,
	 * we still want to print return value and duration for program run.
	 */
	if (test_attr.data_size_out)
		err += FUNC15(test_attr.data_out,
					test_attr.data_size_out,
					data_fname_out, "data_out");
	if (test_attr.ctx_size_out)
		err += FUNC15(test_attr.ctx_out,
					test_attr.ctx_size_out,
					ctx_fname_out, "ctx_out");

	if (json_output) {
		FUNC13(json_wtr, "retval", test_attr.retval);
		FUNC13(json_wtr, "duration", test_attr.duration);
		FUNC11(json_wtr);	/* root */
	} else {
		FUNC7(stdout, "Return value: %u, duration%s: %uns\n",
			test_attr.retval,
			repeat > 1 ? " (average)" : "", test_attr.duration);
	}

free_ctx_out:
	FUNC8(ctx_out);
free_ctx_in:
	FUNC8(ctx_in);
free_data_out:
	FUNC8(data_out);
free_data_in:
	FUNC8(data_in);

	return err;
}