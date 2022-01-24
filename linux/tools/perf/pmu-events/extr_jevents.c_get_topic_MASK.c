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
 int FUNC0 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prog ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  topic ; 

__attribute__((used)) static char *FUNC3(void)
{
	char *tp;
	int i;

	/* tp is free'd in process_one_file() */
	i = FUNC0(&tp, "%d", topic);
	if (i < 0) {
		FUNC1("%s: asprintf() error %s\n", prog);
		return NULL;
	}

	for (i = 0; i < (int) FUNC2(tp); i++) {
		char c = tp[i];

		if (c == '-')
			tp[i] = ' ';
		else if (c == '.') {
			tp[i] = '\0';
			break;
		}
	}

	return tp;
}