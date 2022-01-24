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
struct tracing_data {int temp; scalar_t__ size; int /*<<< orphan*/  temp_file; } ;
struct tracepoint_path {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tracing_data*) ; 
 struct tracepoint_path* FUNC2 (struct list_head*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tracing_data* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int output_fd ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct tracepoint_path*) ; 
 int FUNC9 (struct tracepoint_path*) ; 
 int FUNC10 (struct tracepoint_path*) ; 
 int FUNC11 () ; 
 int FUNC12 () ; 
 int FUNC13 () ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (struct tracing_data**) ; 

struct tracing_data *FUNC18(struct list_head *pattrs,
				      int fd, bool temp)
{
	struct tracepoint_path *tps;
	struct tracing_data *tdata;
	int err;

	output_fd = fd;

	tps = FUNC2(pattrs);
	if (!tps)
		return NULL;

	tdata = FUNC4(sizeof(*tdata));
	if (!tdata)
		return NULL;

	tdata->temp = temp;
	tdata->size = 0;

	if (temp) {
		int temp_fd;

		FUNC15(tdata->temp_file, sizeof(tdata->temp_file),
			 "/tmp/perf-XXXXXX");
		if (!FUNC5(tdata->temp_file)) {
			FUNC7("Can't make temp file");
			FUNC1(tdata);
			return NULL;
		}

		temp_fd = FUNC6(tdata->temp_file, O_RDWR);
		if (temp_fd < 0) {
			FUNC7("Can't read '%s'", tdata->temp_file);
			FUNC1(tdata);
			return NULL;
		}

		/*
		 * Set the temp file the default output, so all the
		 * tracing data are stored into it.
		 */
		output_fd = temp_fd;
	}

	err = FUNC16();
	if (err)
		goto out;
	err = FUNC12();
	if (err)
		goto out;
	err = FUNC10(tps);
	if (err)
		goto out;
	err = FUNC9(tps);
	if (err)
		goto out;
	err = FUNC13();
	if (err)
		goto out;
	err = FUNC11();
	if (err)
		goto out;
	err = FUNC14();

out:
	/*
	 * All tracing data are stored by now, we can restore
	 * the default output file in case we used temp file.
	 */
	if (temp) {
		tdata->size = FUNC3(output_fd, 0, SEEK_CUR);
		FUNC0(output_fd);
		output_fd = fd;
	}

	if (err)
		FUNC17(&tdata);

	FUNC8(tps);
	return tdata;
}