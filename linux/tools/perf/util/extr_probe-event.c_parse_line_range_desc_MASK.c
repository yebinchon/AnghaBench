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
struct line_range {char* file; char* function; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (char*,char) ; 
 void* FUNC6 (char const*) ; 

int FUNC7(const char *arg, struct line_range *lr)
{
	char *range, *file, *name = FUNC6(arg);
	int err;

	if (!name)
		return -ENOMEM;

	lr->start = 0;
	lr->end = INT_MAX;

	range = FUNC5(name, ':');
	if (range) {
		*range++ = '\0';

		err = FUNC2(&range, &lr->start, "start line");
		if (err)
			goto err;

		if (*range == '+' || *range == '-') {
			const char c = *range++;

			err = FUNC2(&range, &lr->end, "end line");
			if (err)
				goto err;

			if (c == '+') {
				lr->end += lr->start;
				/*
				 * Adjust the number of lines here.
				 * If the number of lines == 1, the
				 * the end of line should be equal to
				 * the start of line.
				 */
				lr->end--;
			}
		}

		FUNC3("Line range is %d to %d\n", lr->start, lr->end);

		err = -EINVAL;
		if (lr->start > lr->end) {
			FUNC4("Start line must be smaller"
				       " than end line.\n");
			goto err;
		}
		if (*range != '\0') {
			FUNC4("Tailing with invalid str '%s'.\n", range);
			goto err;
		}
	}

	file = FUNC5(name, '@');
	if (file) {
		*file = '\0';
		lr->file = FUNC6(++file);
		if (lr->file == NULL) {
			err = -ENOMEM;
			goto err;
		}
		lr->function = name;
	} else if (FUNC5(name, '/') || FUNC5(name, '.'))
		lr->file = name;
	else if (FUNC1(name))/* We reuse it for checking funcname */
		lr->function = name;
	else {	/* Invalid name */
		FUNC4("'%s' is not a valid function name.\n", name);
		err = -EINVAL;
		goto err;
	}

	return 0;
err:
	FUNC0(name);
	return err;
}