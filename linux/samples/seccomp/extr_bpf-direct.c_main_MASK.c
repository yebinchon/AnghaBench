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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR_FILENO ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  __NR_read ; 
 int /*<<< orphan*/  __NR_write ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

int FUNC4(int argc, char **argv)
{
	char buf[4096];
	ssize_t bytes = 0;
	if (FUNC0())
		return 1;
	if (FUNC1())
		return 1;
	FUNC3(__NR_write, STDOUT_FILENO,
		FUNC2("OHAI! WHAT IS YOUR NAME? "));
	bytes = FUNC3(__NR_read, STDIN_FILENO, buf, sizeof(buf));
	FUNC3(__NR_write, STDOUT_FILENO, FUNC2("HELLO, "));
	FUNC3(__NR_write, STDOUT_FILENO, buf, bytes);
	FUNC3(__NR_write, STDERR_FILENO,
		FUNC2("Error message going to STDERR\n"));
	return 0;
}