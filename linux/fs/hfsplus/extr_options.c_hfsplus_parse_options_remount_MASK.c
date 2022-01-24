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
typedef  int /*<<< orphan*/  substring_t ;

/* Variables and functions */
 int MAX_OPT_ARGS ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  opt_force 128 
 char* FUNC1 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 

int FUNC2(char *input, int *force)
{
	char *p;
	substring_t args[MAX_OPT_ARGS];
	int token;

	if (!input)
		return 1;

	while ((p = FUNC1(&input, ",")) != NULL) {
		if (!*p)
			continue;

		token = FUNC0(p, tokens, args);
		switch (token) {
		case opt_force:
			*force = 1;
			break;
		default:
			break;
		}
	}

	return 1;
}