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
struct sigaction {int /*<<< orphan*/  sa_handler; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 char* buff ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  exit_tracelog ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char**,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct sigaction const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trace_pipe_fd ; 

int FUNC11(int argc, char **argv)
{
	const struct sigaction act = {
		.sa_handler = exit_tracelog
	};
	char trace_pipe[PATH_MAX];
	size_t buff_len = 0;

	if (json_output)
		FUNC5(json_wtr);

	if (!FUNC3(trace_pipe))
		return -1;

	trace_pipe_fd = FUNC1(trace_pipe, "r");
	if (!trace_pipe_fd) {
		FUNC7("could not open trace pipe: %s", FUNC10(errno));
		return -1;
	}

	FUNC9(SIGHUP, &act, NULL);
	FUNC9(SIGINT, &act, NULL);
	FUNC9(SIGTERM, &act, NULL);
	while (1) {
		ssize_t ret;

		ret = FUNC4(&buff, &buff_len, trace_pipe_fd);
		if (ret <= 0) {
			FUNC7("failed to read content from trace pipe: %s",
			      FUNC10(errno));
			break;
		}
		if (json_output)
			FUNC6(json_wtr, buff);
		else
			FUNC8("%s", buff);
	}

	FUNC0(trace_pipe_fd);
	FUNC2(buff);
	return -1;
}