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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LOG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,size_t,int) ; 

__attribute__((used)) static void FUNC3(char *log, size_t log_len, int log_level)
{
	int ret;

	ret = FUNC2(log, log_len, log_level);
	FUNC1(ret, EINVAL);
	if (log)
		FUNC0(log, LOG_SIZE,
			   "verifier touched log with bad parameters\n");
}