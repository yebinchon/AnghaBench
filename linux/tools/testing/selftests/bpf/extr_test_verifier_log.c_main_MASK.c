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

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  ENOSPC ; 
 int LOG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,size_t,size_t,int /*<<< orphan*/ ,char*) ; 

int FUNC5(int argc, char **argv)
{
	char full_log[LOG_SIZE];
	char log[LOG_SIZE];
	size_t want_len;
	int i;

	FUNC0(log, 1, LOG_SIZE);

	/* Test incorrect attr */
	FUNC1("Test log_level 0...\n");
	FUNC3(log, LOG_SIZE, 0);

	FUNC1("Test log_size < 128...\n");
	FUNC3(log, 15, 1);

	FUNC1("Test log_buff = NULL...\n");
	FUNC3(NULL, LOG_SIZE, 1);

	/* Test with log big enough */
	FUNC1("Test oversized buffer...\n");
	FUNC4(full_log, LOG_SIZE, LOG_SIZE, 0, EACCES, full_log);

	want_len = FUNC2(full_log);

	FUNC1("Test exact buffer...\n");
	FUNC4(log, LOG_SIZE, want_len + 2, want_len, EACCES, full_log);

	FUNC1("Test undersized buffers...\n");
	for (i = 0; i < 64; i++) {
		full_log[want_len - i + 1] = 1;
		full_log[want_len - i] = 0;

		FUNC4(log, LOG_SIZE, want_len + 1 - i, want_len - i,
			      ENOSPC, full_log);
	}

	FUNC1("test_verifier_log: OK\n");
	return 0;
}