#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int system_wide; scalar_t__ uid; scalar_t__ pid; scalar_t__ tid; } ;
struct TYPE_22__ {size_t affinity; scalar_t__ comp_level; int tail_synthesize; int no_inherit; int ignore_missing_thread; scalar_t__ nr_cblocks; scalar_t__ mmap_flush; scalar_t__ full_auxtrace; TYPE_3__ target; int /*<<< orphan*/  no_inherit_set; int /*<<< orphan*/  no_samples; scalar_t__ overwrite; scalar_t__ record_switch_events; } ;
struct TYPE_18__ {scalar_t__ enabled; int /*<<< orphan*/  filenames; scalar_t__ num_files; scalar_t__ time; } ;
struct record {int no_buildid; int no_buildid_cache; int buildid_all; int /*<<< orphan*/  itr; TYPE_9__* evlist; TYPE_8__ opts; scalar_t__ no_buildid_cache_set; scalar_t__ no_buildid_set; TYPE_1__ switch_output; int /*<<< orphan*/  affinity_mask; } ;
typedef  int /*<<< orphan*/  errbuf ;
struct TYPE_19__ {scalar_t__ nr_entries; } ;
struct TYPE_23__ {TYPE_2__ core; } ;
struct TYPE_21__ {int allow_aliases; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  PARSE_OPT_STOP_AT_NON_OPTION ; 
 size_t PERF_AFFINITY_SYS ; 
 int /*<<< orphan*/  SIGALRM ; 
 scalar_t__ UINT_MAX ; 
 int FUNC1 (struct record*,int,char const**) ; 
 scalar_t__ FUNC2 (TYPE_9__*,int) ; 
 scalar_t__* affinity_tags ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  alarm_sig_handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_9__*,TYPE_8__*) ; 
 int FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 scalar_t__ comp_level_max ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ dry_run ; 
 int errno ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*) ; 
 TYPE_9__* FUNC11 () ; 
 scalar_t__ nr_cblocks_max ; 
 scalar_t__ nr_cgroups ; 
 int FUNC12 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (int /*<<< orphan*/ ,struct record*) ; 
 scalar_t__ FUNC16 (TYPE_9__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  perf_record_config ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 scalar_t__ quiet ; 
 struct record record ; 
 int FUNC20 (struct record*) ; 
 int /*<<< orphan*/  record_options ; 
 scalar_t__ FUNC21 (TYPE_8__*) ; 
 int /*<<< orphan*/  record_usage ; 
 int /*<<< orphan*/  FUNC22 (char,char*,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (struct record*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 TYPE_7__ symbol_conf ; 
 scalar_t__ FUNC28 (TYPE_3__*) ; 
 int FUNC29 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*,int,char*,int) ; 
 int FUNC31 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC32 (char*,...) ; 
 int /*<<< orphan*/  FUNC33 (char*,char*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

int FUNC36(int argc, const char **argv)
{
	int err;
	struct record *rec = &record;
	char errbuf[BUFSIZ];

	FUNC23(LC_ALL, "");

#ifndef HAVE_LIBBPF_SUPPORT
# define set_nobuild(s, l, c) set_option_nobuild(record_options, s, l, "NO_LIBBPF=1", c)
	set_nobuild('\0', "clang-path", true);
	set_nobuild('\0', "clang-opt", true);
# undef set_nobuild
#endif

#ifndef HAVE_BPF_PROLOGUE
# if !defined (HAVE_DWARF_SUPPORT)
#  define REASON  "NO_DWARF=1"
# elif !defined (HAVE_LIBBPF_SUPPORT)
#  define REASON  "NO_LIBBPF=1"
# else
#  define REASON  "this architecture doesn't support BPF prologue"
# endif
# define set_nobuild(s, l, c) set_option_nobuild(record_options, s, l, REASON, c)
	set_nobuild('\0', "vmlinux", true);
# undef set_nobuild
# undef REASON
#endif

	FUNC0(&rec->affinity_mask);
	rec->opts.affinity = PERF_AFFINITY_SYS;

	rec->evlist = FUNC11();
	if (rec->evlist == NULL)
		return -ENOMEM;

	err = FUNC15(perf_record_config, rec);
	if (err)
		return err;

	argc = FUNC12(argc, argv, record_options, record_usage,
			    PARSE_OPT_STOP_AT_NON_OPTION);
	if (quiet)
		FUNC17();

	/* Make system wide (-a) the default target. */
	if (!argc && FUNC28(&rec->opts.target))
		rec->opts.target.system_wide = true;

	if (nr_cgroups && !rec->opts.target.system_wide) {
		FUNC35(record_usage, record_options,
			"cgroup monitoring only available in system-wide mode");

	}

	if (rec->opts.comp_level != 0) {
		FUNC18("Compression enabled, disabling build id collection at the end of the session.\n");
		rec->no_buildid = true;
	}

	if (rec->opts.record_switch_events &&
	    !FUNC14()) {
		FUNC32("kernel does not support recording context switch events\n");
		FUNC13(record_usage, record_options, "switch-events", 0);
		return -EINVAL;
	}

	if (FUNC25(rec)) {
		FUNC13(record_usage, record_options, "switch-output", 0);
		return -EINVAL;
	}

	if (rec->switch_output.time) {
		FUNC24(SIGALRM, alarm_sig_handler);
		FUNC3(rec->switch_output.time);
	}

	if (rec->switch_output.num_files) {
		rec->switch_output.filenames = FUNC8(sizeof(char *),
						      rec->switch_output.num_files);
		if (!rec->switch_output.filenames)
			return -EINVAL;
	}

	/*
	 * Allow aliases to facilitate the lookup of symbols for address
	 * filters. Refer to auxtrace_parse_filters().
	 */
	symbol_conf.allow_aliases = true;

	FUNC27(NULL);

	err = FUNC20(rec);
	if (err)
		goto out;

	if (dry_run)
		goto out;

	err = FUNC6(rec->evlist);
	if (err) {
		FUNC7(rec->evlist, err, errbuf, sizeof(errbuf));
		FUNC19("ERROR: Setup BPF stdout failed: %s\n",
			 errbuf);
		goto out;
	}

	err = -ENOMEM;

	if (rec->no_buildid_cache || rec->no_buildid) {
		FUNC9();
	} else if (rec->switch_output.enabled) {
		/*
		 * In 'perf record --switch-output', disable buildid
		 * generation by default to reduce data file switching
		 * overhead. Still generate buildid if they are required
		 * explicitly using
		 *
		 *  perf record --switch-output --no-no-buildid \
		 *              --no-no-buildid-cache
		 *
		 * Following code equals to:
		 *
		 * if ((rec->no_buildid || !rec->no_buildid_set) &&
		 *     (rec->no_buildid_cache || !rec->no_buildid_cache_set))
		 *         disable_buildid_cache();
		 */
		bool disable = true;

		if (rec->no_buildid_set && !rec->no_buildid)
			disable = false;
		if (rec->no_buildid_cache_set && !rec->no_buildid_cache)
			disable = false;
		if (disable) {
			rec->no_buildid = true;
			rec->no_buildid_cache = true;
			FUNC9();
		}
	}

	if (record.opts.overwrite)
		record.opts.tail_synthesize = true;

	if (rec->evlist->core.nr_entries == 0 &&
	    FUNC2(rec->evlist, !record.opts.no_samples) < 0) {
		FUNC19("Not enough memory for event selector list\n");
		goto out;
	}

	if (rec->opts.target.tid && !rec->opts.no_inherit_set)
		rec->opts.no_inherit = true;

	err = FUNC31(&rec->opts.target);
	if (err) {
		FUNC30(&rec->opts.target, err, errbuf, BUFSIZ);
		FUNC33("%s\n", errbuf);
	}

	err = FUNC29(&rec->opts.target);
	if (err) {
		int saved_errno = errno;

		FUNC30(&rec->opts.target, err, errbuf, BUFSIZ);
		FUNC32("%s", errbuf);

		err = -saved_errno;
		goto out;
	}

	/* Enable ignoring missing threads when -u/-p option is defined. */
	rec->opts.ignore_missing_thread = rec->opts.target.uid != UINT_MAX || rec->opts.target.pid;

	err = -ENOMEM;
	if (FUNC16(rec->evlist, &rec->opts.target) < 0)
		FUNC34(record_usage, record_options);

	err = FUNC5(rec->itr, rec->evlist, &rec->opts);
	if (err)
		goto out;

	/*
	 * We take all buildids when the file contains
	 * AUX area tracing data because we do not decode the
	 * trace because it would take too long.
	 */
	if (rec->opts.full_auxtrace)
		rec->buildid_all = true;

	if (FUNC21(&rec->opts)) {
		err = -EINVAL;
		goto out;
	}

	if (rec->opts.nr_cblocks > nr_cblocks_max)
		rec->opts.nr_cblocks = nr_cblocks_max;
	FUNC18("nr_cblocks: %d\n", rec->opts.nr_cblocks);

	FUNC18("affinity: %s\n", affinity_tags[rec->opts.affinity]);
	FUNC18("mmap flush: %d\n", rec->opts.mmap_flush);

	if (rec->opts.comp_level > comp_level_max)
		rec->opts.comp_level = comp_level_max;
	FUNC18("comp level: %d\n", rec->opts.comp_level);

	err = FUNC1(&record, argc, argv);
out:
	FUNC10(rec->evlist);
	FUNC26();
	FUNC4(rec->itr);
	return err;
}