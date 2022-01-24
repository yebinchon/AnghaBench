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
struct trace_event {struct tep_handle* pevent; } ;
struct tep_handle {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  TEP_NSEC_OUTPUT ; 
 double FUNC0 (char*) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int input_fd ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (struct tep_handle*) ; 
 int FUNC8 (struct tep_handle*) ; 
 int FUNC9 (struct tep_handle*) ; 
 int FUNC10 (struct tep_handle*) ; 
 int FUNC11 (struct tep_handle*) ; 
 int FUNC12 (struct tep_handle*) ; 
 int FUNC13 (struct tep_handle*) ; 
 char* FUNC14 () ; 
 int repipe ; 
 int /*<<< orphan*/  FUNC15 (struct tep_handle*) ; 
 int /*<<< orphan*/  FUNC16 (struct tep_handle*) ; 
 int /*<<< orphan*/  FUNC17 (struct tep_handle*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct tep_handle*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct tep_handle*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct tep_handle*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct tep_handle*,int) ; 
 int trace_data_size ; 
 int /*<<< orphan*/  FUNC22 (struct trace_event*) ; 
 scalar_t__ FUNC23 (struct trace_event*) ; 

ssize_t FUNC24(int fd, struct trace_event *tevent, bool __repipe)
{
	char buf[BUFSIZ];
	char test[] = { 23, 8, 68 };
	char *version;
	int show_version = 0;
	int show_funcs = 0;
	int show_printk = 0;
	ssize_t size = -1;
	int file_bigendian;
	int host_bigendian;
	int file_long_size;
	int file_page_size;
	struct tep_handle *pevent = NULL;
	int err;

	repipe = __repipe;
	input_fd = fd;

	if (FUNC2(buf, 3) < 0)
		return -1;
	if (FUNC4(buf, test, 3) != 0) {
		FUNC5("no trace data in the file");
		return -1;
	}

	if (FUNC2(buf, 7) < 0)
		return -1;
	if (FUNC4(buf, "tracing", 7) != 0) {
		FUNC5("not a trace file (missing 'tracing' tag)");
		return -1;
	}

	version = FUNC14();
	if (version == NULL)
		return -1;
	if (show_version)
		FUNC6("version = %s\n", version);

	if (FUNC2(buf, 1) < 0) {
		FUNC3(version);
		return -1;
	}
	file_bigendian = buf[0];
	host_bigendian = FUNC1();

	if (FUNC23(tevent)) {
		FUNC5("trace_event__init failed");
		goto out;
	}

	pevent = tevent->pevent;

	FUNC18(pevent, TEP_NSEC_OUTPUT);
	FUNC17(pevent, file_bigendian);
	FUNC19(pevent, host_bigendian);

	if (FUNC2(buf, 1) < 0)
		goto out;
	file_long_size = buf[0];

	file_page_size = FUNC7(pevent);
	if (!file_page_size)
		goto out;

	FUNC20(pevent, file_long_size);
	FUNC21(pevent, file_page_size);

	err = FUNC11(pevent);
	if (err)
		goto out;
	err = FUNC9(pevent);
	if (err)
		goto out;
	err = FUNC8(pevent);
	if (err)
		goto out;
	err = FUNC12(pevent);
	if (err)
		goto out;
	err = FUNC10(pevent);
	if (err)
		goto out;
	if (FUNC0(version) >= 0.6) {
		err = FUNC13(pevent);
		if (err)
			goto out;
	}

	size = trace_data_size;
	repipe = false;

	if (show_funcs) {
		FUNC15(pevent);
	} else if (show_printk) {
		FUNC16(pevent);
	}

	pevent = NULL;

out:
	if (pevent)
		FUNC22(tevent);
	FUNC3(version);
	return size;
}