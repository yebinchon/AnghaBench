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
 scalar_t__ FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3(const char *expected_line, int nexpected_line,
		      int expected_line_len, const char *line)
{
	if (FUNC0(nexpected_line == expected_line_len,
		  "expected_line is too long"))
		return -1;

	if (FUNC2(expected_line, line)) {
		FUNC1(stderr, "unexpected pprint output\n");
		FUNC1(stderr, "expected: %s", expected_line);
		FUNC1(stderr, "    read: %s", line);
		return -1;
	}

	return 0;
}