#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct record_opts {int tail_synthesize; int /*<<< orphan*/  sample_address; int /*<<< orphan*/  target; scalar_t__ full_auxtrace; } ;
struct perf_tool {int dummy; } ;
struct perf_data {scalar_t__ is_pipe; } ;
struct record {int bytes_written; TYPE_2__* evlist; struct perf_tool tool; int /*<<< orphan*/  itr; struct record_opts opts; struct perf_data data; struct perf_session* session; } ;
struct machine {int dummy; } ;
struct TYPE_10__ {struct machine host; } ;
struct perf_session {TYPE_7__ machines; } ;
struct TYPE_8__ {int /*<<< orphan*/  threads; int /*<<< orphan*/  cpus; int /*<<< orphan*/  entries; } ;
struct TYPE_9__ {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct machine*,struct perf_tool*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,struct perf_tool*) ; 
 int FUNC4 (struct perf_data*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct perf_tool*,int /*<<< orphan*/ ,struct machine*) ; 
 int FUNC6 (struct perf_tool*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct perf_tool*,struct perf_session*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct perf_session*,int /*<<< orphan*/ ,struct machine*,struct record_opts*) ; 
 int FUNC9 (struct perf_tool*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct perf_tool*,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC11 (struct perf_tool*,struct perf_session*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  perf_event__synthesize_guest_os ; 
 int FUNC12 (struct perf_tool*,int /*<<< orphan*/ ,struct machine*) ; 
 int FUNC13 (struct perf_tool*,int /*<<< orphan*/ ,struct machine*) ; 
 int FUNC14 (struct perf_tool*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (struct perf_tool*,int,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ perf_guest ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  process_synthesized_event ; 
 int /*<<< orphan*/  FUNC19 (struct record*) ; 

__attribute__((used)) static int FUNC20(struct record *rec, bool tail)
{
	struct perf_session *session = rec->session;
	struct machine *machine = &session->machines.host;
	struct perf_data *data = &rec->data;
	struct record_opts *opts = &rec->opts;
	struct perf_tool *tool = &rec->tool;
	int fd = FUNC4(data);
	int err = 0;

	if (rec->opts.tail_synthesize != tail)
		return 0;

	if (data->is_pipe) {
		/*
		 * We need to synthesize events first, because some
		 * features works on top of them (on report side).
		 */
		err = FUNC6(tool, rec->evlist,
						   process_synthesized_event);
		if (err < 0) {
			FUNC17("Couldn't synthesize attrs.\n");
			goto out;
		}

		err = FUNC11(tool, session, rec->evlist,
						      process_synthesized_event);
		if (err < 0) {
			FUNC17("Couldn't synthesize features.\n");
			return err;
		}

		if (FUNC2(&rec->evlist->core.entries)) {
			/*
			 * FIXME err <= 0 here actually means that
			 * there were no tracepoints so its not really
			 * an error, just that we don't need to
			 * synthesize anything.  We really have to
			 * return this more properly and also
			 * propagate errors that now are calling die()
			 */
			err = FUNC15(tool,	fd, rec->evlist,
								  process_synthesized_event);
			if (err <= 0) {
				FUNC17("Couldn't record tracing data.\n");
				goto out;
			}
			rec->bytes_written += err;
		}
	}

	err = FUNC5(FUNC19(rec), tool,
					  process_synthesized_event, machine);
	if (err)
		goto out;

	if (rec->opts.full_auxtrace) {
		err = FUNC7(rec->itr, tool,
					session, process_synthesized_event);
		if (err)
			goto out;
	}

	if (!FUNC16(rec->evlist)) {
		err = FUNC12(tool, process_synthesized_event,
							 machine);
		FUNC0(err < 0, "Couldn't record kernel reference relocation symbol\n"
				   "Symbol resolution may be skewed if relocation was used (e.g. kexec).\n"
				   "Check /proc/kallsyms permission or run as root.\n");

		err = FUNC13(tool, process_synthesized_event,
						     machine);
		FUNC0(err < 0, "Couldn't record kernel module information.\n"
				   "Symbol resolution may be skewed if relocation was used (e.g. kexec).\n"
				   "Check /proc/modules permission or run as root.\n");
	}

	if (perf_guest) {
		FUNC3(&session->machines,
					 perf_event__synthesize_guest_os, tool);
	}

	err = FUNC10(&rec->tool,
						rec->evlist,
						process_synthesized_event,
						data->is_pipe);
	if (err)
		goto out;

	err = FUNC14(&rec->tool, rec->evlist->core.threads,
						 process_synthesized_event,
						NULL);
	if (err < 0) {
		FUNC17("Couldn't synthesize thread map.\n");
		return err;
	}

	err = FUNC9(&rec->tool, rec->evlist->core.cpus,
					     process_synthesized_event, NULL);
	if (err < 0) {
		FUNC17("Couldn't synthesize cpu map.\n");
		return err;
	}

	err = FUNC8(session, process_synthesized_event,
						machine, opts);
	if (err < 0)
		FUNC18("Couldn't synthesize bpf events.\n");

	err = FUNC1(machine, tool, &opts->target, rec->evlist->core.threads,
					    process_synthesized_event, opts->sample_address,
					    1);
out:
	return err;
}