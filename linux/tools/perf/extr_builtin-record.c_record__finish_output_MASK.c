#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  size; } ;
struct perf_data {TYPE_1__ file; scalar_t__ is_pipe; } ;
struct record {int /*<<< orphan*/  evlist; TYPE_3__* session; scalar_t__ buildid_all; int /*<<< orphan*/  no_buildid; scalar_t__ bytes_written; struct perf_data data; } ;
struct TYPE_6__ {int /*<<< orphan*/  data_size; } ;
struct TYPE_7__ {TYPE_2__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct perf_data*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct record*) ; 

__attribute__((used)) static void
FUNC5(struct record *rec)
{
	struct perf_data *data = &rec->data;
	int fd = FUNC2(data);

	if (data->is_pipe)
		return;

	rec->session->header.data_size += rec->bytes_written;
	data->file.size = FUNC1(FUNC2(data), 0, SEEK_CUR);

	if (!rec->no_buildid) {
		FUNC4(rec);

		if (rec->buildid_all)
			FUNC0(rec->session);
	}
	FUNC3(rec->session, rec->evlist, fd, true);

	return;
}