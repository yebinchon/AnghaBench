#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_18__ {int /*<<< orphan*/  pevent; } ;
struct TYPE_12__ {int /*<<< orphan*/ * env; } ;
struct TYPE_13__ {TYPE_1__ host; } ;
struct perf_header {scalar_t__ needs_swap; int /*<<< orphan*/  env; } ;
struct perf_session {TYPE_8__* evlist; TYPE_7__ tevent; TYPE_2__ machines; struct perf_header header; struct perf_data* data; } ;
struct TYPE_16__ {int size; int offset; } ;
struct TYPE_14__ {scalar_t__ size; } ;
struct perf_file_header {int attr_size; TYPE_5__ attrs; TYPE_3__ data; } ;
struct TYPE_17__ {int size; int offset; } ;
struct perf_file_attr {TYPE_6__ ids; int /*<<< orphan*/  attr; } ;
struct TYPE_15__ {int /*<<< orphan*/  path; } ;
struct perf_data {TYPE_4__ file; } ;
struct evsel {int /*<<< orphan*/  core; scalar_t__ needs_swap; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  f_id ;
struct TYPE_19__ {int /*<<< orphan*/  core; int /*<<< orphan*/ * env; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 void* FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,struct evsel*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*) ; 
 TYPE_8__* FUNC3 () ; 
 struct evsel* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct perf_data*) ; 
 scalar_t__ FUNC7 (struct perf_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC12 (struct perf_file_header*,struct perf_header*,int) ; 
 int /*<<< orphan*/  perf_file_section__process ; 
 scalar_t__ FUNC13 (struct perf_header*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct perf_header*,int,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int,struct perf_header*,struct perf_file_attr*) ; 

int FUNC19(struct perf_session *session)
{
	struct perf_data *data = session->data;
	struct perf_header *header = &session->header;
	struct perf_file_header	f_header;
	struct perf_file_attr	f_attr;
	u64			f_id;
	int nr_attrs, nr_ids, i, j;
	int fd = FUNC6(data);

	session->evlist = FUNC3();
	if (session->evlist == NULL)
		return -ENOMEM;

	session->evlist->env = &header->env;
	session->machines.host.env = &header->env;
	if (FUNC7(data))
		return FUNC15(session);

	if (FUNC12(&f_header, header, fd) < 0)
		return -EINVAL;

	/*
	 * Sanity check that perf.data was written cleanly; data size is
	 * initialized to 0 and updated only if the on_exit function is run.
	 * If data size is still 0 then the file contains only partial
	 * information.  Just warn user and process it as much as it can.
	 */
	if (f_header.data.size == 0) {
		FUNC17("WARNING: The %s file's data size field is 0 which is unexpected.\n"
			   "Was the 'perf record' command properly terminated?\n",
			   data->file.path);
	}

	if (f_header.attr_size == 0) {
		FUNC16("ERROR: The %s file's attr size field is 0 which is unexpected.\n"
		       "Was the 'perf record' command properly terminated?\n",
		       data->file.path);
		return -EINVAL;
	}

	nr_attrs = f_header.attrs.size / f_header.attr_size;
	FUNC5(fd, f_header.attrs.offset, SEEK_SET);

	for (i = 0; i < nr_attrs; i++) {
		struct evsel *evsel;
		off_t tmp;

		if (FUNC18(fd, header, &f_attr) < 0)
			goto out_errno;

		if (header->needs_swap) {
			f_attr.ids.size   = FUNC0(f_attr.ids.size);
			f_attr.ids.offset = FUNC0(f_attr.ids.offset);
			FUNC8(&f_attr.attr);
		}

		tmp = FUNC5(fd, 0, SEEK_CUR);
		evsel = FUNC4(&f_attr.attr);

		if (evsel == NULL)
			goto out_delete_evlist;

		evsel->needs_swap = header->needs_swap;
		/*
		 * Do it before so that if perf_evsel__alloc_id fails, this
		 * entry gets purged too at evlist__delete().
		 */
		FUNC1(session->evlist, evsel);

		nr_ids = f_attr.ids.size / sizeof(u64);
		/*
		 * We don't have the cpu and thread maps on the header, so
		 * for allocating the perf_sample_id table we fake 1 cpu and
		 * hattr->ids threads.
		 */
		if (FUNC11(&evsel->core, 1, nr_ids))
			goto out_delete_evlist;

		FUNC5(fd, f_attr.ids.offset, SEEK_SET);

		for (j = 0; j < nr_ids; j++) {
			if (FUNC13(header, fd, &f_id, sizeof(f_id)))
				goto out_errno;

			FUNC9(&session->evlist->core, &evsel->core, 0, j, f_id);
		}

		FUNC5(fd, tmp, SEEK_SET);
	}

	FUNC14(header, fd, &session->tevent,
				      perf_file_section__process);

	if (FUNC10(session->evlist,
						   session->tevent.pevent))
		goto out_delete_evlist;

	return 0;
out_errno:
	return -errno;

out_delete_evlist:
	FUNC2(session->evlist);
	session->evlist = NULL;
	return -ENOMEM;
}