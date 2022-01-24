#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  env; } ;
struct perf_session {TYPE_2__ header; int /*<<< orphan*/  evlist; } ;
struct perf_data {int /*<<< orphan*/  path; int /*<<< orphan*/  force; int /*<<< orphan*/  mode; } ;
struct option {int dummy; } ;
struct evsel {TYPE_1__* tp_format; } ;
struct TYPE_6__ {int use_callchain; } ;
struct TYPE_4__ {int /*<<< orphan*/  tep; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct perf_session*) ; 
 scalar_t__ KMEM_SLAB ; 
 int /*<<< orphan*/  LC_ALL ; 
 struct option const FUNC1 (float,char*,int /*<<< orphan*/ *,char*) ; 
 struct option const FUNC2 (char,char*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 struct option const FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct option const FUNC4 () ; 
 struct option const FUNC5 (char,char*,int /*<<< orphan*/ *,char*) ; 
 struct option const FUNC6 (char,char*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  PERF_DATA_MODE_READ ; 
 int FUNC7 (struct perf_session*) ; 
 int FUNC8 (struct perf_session*) ; 
 int FUNC9 (int,char const**) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  input_name ; 
 int /*<<< orphan*/  kmem_config ; 
 scalar_t__ kmem_default ; 
 int kmem_page ; 
 int /*<<< orphan*/  kmem_page_size ; 
 struct perf_session* kmem_session ; 
 int kmem_slab ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  live_page ; 
 int /*<<< orphan*/  page_alloc_sort ; 
 int /*<<< orphan*/  page_alloc_sort_input ; 
 int /*<<< orphan*/  page_caller_sort ; 
 int /*<<< orphan*/  page_caller_sort_input ; 
 int /*<<< orphan*/  parse_alloc_opt ; 
 int /*<<< orphan*/  parse_caller_opt ; 
 int /*<<< orphan*/  parse_line_opt ; 
 int FUNC12 (int,char const**,struct option const*,char const* const*,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  parse_page_opt ; 
 int /*<<< orphan*/  parse_slab_opt ; 
 int /*<<< orphan*/  parse_sort_opt ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct evsel* FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  perf_kmem ; 
 int /*<<< orphan*/  FUNC15 (struct perf_session*) ; 
 struct perf_session* FUNC16 (struct perf_data*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char const*,...) ; 
 int /*<<< orphan*/  ptime ; 
 int /*<<< orphan*/  raw_ip ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char const* const) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char const* const) ; 
 int /*<<< orphan*/  slab_alloc_sort ; 
 int /*<<< orphan*/  slab_caller_sort ; 
 int /*<<< orphan*/  FUNC22 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 TYPE_3__ symbol_conf ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  time_str ; 
 int /*<<< orphan*/  FUNC26 (char const**,struct option const*) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC27(int argc, const char **argv)
{
	const char * const default_slab_sort = "frag,hit,bytes";
	const char * const default_page_sort = "bytes,hit";
	struct perf_data data = {
		.mode = PERF_DATA_MODE_READ,
	};
	const struct option kmem_options[] = {
	FUNC6('i', "input", &input_name, "file", "input file name"),
	FUNC5('v', "verbose", &verbose,
		    "be more verbose (show symbol address, etc)"),
	FUNC3(0, "caller", NULL, NULL,
			   "show per-callsite statistics", parse_caller_opt),
	FUNC3(0, "alloc", NULL, NULL,
			   "show per-allocation statistics", parse_alloc_opt),
	FUNC2('s', "sort", NULL, "key[,key2...]",
		     "sort by keys: ptr, callsite, bytes, hit, pingpong, frag, "
		     "page, order, migtype, gfp", parse_sort_opt),
	FUNC2('l', "line", NULL, "num", "show n lines", parse_line_opt),
	FUNC1(0, "raw-ip", &raw_ip, "show raw ip instead of symbol"),
	FUNC1('f', "force", &data.force, "don't complain, do it"),
	FUNC3(0, "slab", NULL, NULL, "Analyze slab allocator",
			   parse_slab_opt),
	FUNC3(0, "page", NULL, NULL, "Analyze page allocator",
			   parse_page_opt),
	FUNC1(0, "live", &live_page, "Show live page stat"),
	FUNC6(0, "time", &time_str, "str",
		   "Time span of interest (start,stop)"),
	FUNC4()
	};
	const char *const kmem_subcommands[] = { "record", "stat", NULL };
	const char *kmem_usage[] = {
		NULL,
		NULL
	};
	struct perf_session *session;
	static const char errmsg[] = "No %s allocation events found.  Have you run 'perf kmem record --%s'?\n";
	int ret = FUNC13(kmem_config, NULL);

	if (ret)
		return ret;

	argc = FUNC12(argc, argv, kmem_options,
					kmem_subcommands, kmem_usage, 0);

	if (!argc)
		FUNC26(kmem_usage, kmem_options);

	if (kmem_slab == 0 && kmem_page == 0) {
		if (kmem_default == KMEM_SLAB)
			kmem_slab = 1;
		else
			kmem_page = 1;
	}

	if (!FUNC23(argv[0], "rec", 3)) {
		FUNC24(NULL);
		return FUNC9(argc, argv);
	}

	data.path = input_name;

	kmem_session = session = FUNC16(&data, false, &perf_kmem);
	if (FUNC0(session))
		return FUNC7(session);

	ret = -1;

	if (kmem_slab) {
		if (!FUNC14(session->evlist,
							  "kmem:kmalloc")) {
			FUNC18(errmsg, "slab", "slab");
			goto out_delete;
		}
	}

	if (kmem_page) {
		struct evsel *evsel;

		evsel = FUNC14(session->evlist,
							     "kmem:mm_page_alloc");
		if (evsel == NULL) {
			FUNC18(errmsg, "page", "page");
			goto out_delete;
		}

		kmem_page_size = FUNC25(evsel->tp_format->tep);
		symbol_conf.use_callchain = true;
	}

	FUNC24(&session->header.env);

	if (FUNC17(&ptime, time_str) != 0) {
		FUNC18("Invalid time string\n");
		ret = -EINVAL;
		goto out_delete;
	}

	if (!FUNC22(argv[0], "stat")) {
		FUNC19(LC_ALL, "");

		if (FUNC10())
			goto out_delete;

		if (FUNC11(&slab_caller_sort))
			FUNC21(&slab_caller_sort, default_slab_sort);
		if (FUNC11(&slab_alloc_sort))
			FUNC21(&slab_alloc_sort, default_slab_sort);
		if (FUNC11(&page_caller_sort))
			FUNC20(&page_caller_sort, default_page_sort);
		if (FUNC11(&page_alloc_sort))
			FUNC20(&page_alloc_sort, default_page_sort);

		if (kmem_page) {
			FUNC20(&page_alloc_sort_input,
					   "page,order,migtype,gfp");
			FUNC20(&page_caller_sort_input,
					   "callsite,order,migtype,gfp");
		}
		ret = FUNC8(session);
	} else
		FUNC26(kmem_usage, kmem_options);

out_delete:
	FUNC15(session);

	return ret;
}