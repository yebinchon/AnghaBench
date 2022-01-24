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
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  input_fd ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ repipe ; 
 int trace_data_size ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static char *FUNC5(void)
{
	char buf[BUFSIZ];
	char *str = NULL;
	int size = 0;
	off_t r;
	char c;

	for (;;) {
		r = FUNC3(input_fd, &c, 1);
		if (r < 0) {
			FUNC2("reading input file");
			goto out;
		}

		if (!r) {
			FUNC2("no data");
			goto out;
		}

		if (repipe) {
			int retw = FUNC4(STDOUT_FILENO, &c, 1);

			if (retw <= 0 || retw != r) {
				FUNC2("repiping input file string");
				goto out;
			}
		}

		buf[size++] = c;

		if (!c)
			break;
	}

	trace_data_size += size;

	str = FUNC0(size);
	if (str)
		FUNC1(str, buf, size);
out:
	return str;
}