#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timestamp ;
struct TYPE_8__ {int /*<<< orphan*/  target; } ;
struct TYPE_7__ {int num_files; int cur_file; char** filenames; } ;
struct perf_data {char* path; } ;
struct record {TYPE_4__ opts; TYPE_3__ switch_output; TYPE_2__* session; scalar_t__ bytes_written; scalar_t__ samples; struct perf_data data; } ;
struct TYPE_5__ {scalar_t__ data_size; int /*<<< orphan*/  data_offset; } ;
struct TYPE_6__ {TYPE_1__ header; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct perf_data*,char*,int /*<<< orphan*/ ,int,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  FUNC5 (struct record*) ; 
 int /*<<< orphan*/  FUNC6 (struct record*) ; 
 int /*<<< orphan*/  FUNC7 (struct record*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct record*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 

__attribute__((used)) static int
FUNC12(struct record *rec, bool at_exit)
{
	struct perf_data *data = &rec->data;
	int fd, err;
	char *new_filename;

	/* Same Size:      "2015122520103046"*/
	char timestamp[] = "InvalidTimestamp";

	FUNC5(rec);

	FUNC7(rec, true);
	if (FUNC10(&rec->opts.target))
		FUNC8(rec, true);

	rec->samples = 0;
	FUNC6(rec);
	err = FUNC0(timestamp, sizeof(timestamp));
	if (err) {
		FUNC4("Failed to get current timestamp\n");
		return -EINVAL;
	}

	fd = FUNC3(data, timestamp,
				    rec->session->header.data_offset,
				    at_exit, &new_filename);
	if (fd >= 0 && !at_exit) {
		rec->bytes_written = 0;
		rec->session->header.data_size = 0;
	}

	if (!quiet)
		FUNC1(stderr, "[ perf record: Dump %s.%s ]\n",
			data->path, timestamp);

	if (rec->switch_output.num_files) {
		int n = rec->switch_output.cur_file + 1;

		if (n >= rec->switch_output.num_files)
			n = 0;
		rec->switch_output.cur_file = n;
		if (rec->switch_output.filenames[n]) {
			FUNC9(rec->switch_output.filenames[n]);
			FUNC11(&rec->switch_output.filenames[n]);
		}
		rec->switch_output.filenames[n] = new_filename;
	} else {
		FUNC2(new_filename);
	}

	/* Output tracking events */
	if (!at_exit) {
		FUNC7(rec, false);

		/*
		 * In 'perf record --switch-output' without -a,
		 * record__synthesize() in record__switch_output() won't
		 * generate tracking events because there's no thread_map
		 * in evlist. Which causes newly created perf.data doesn't
		 * contain map and comm information.
		 * Create a fake thread_map and directly call
		 * perf_event__synthesize_thread_map() for those events.
		 */
		if (FUNC10(&rec->opts.target))
			FUNC8(rec, false);
	}
	return fd;
}