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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(char **tok, char *buf, int size)
{
	char *newtok = FUNC1(*tok, size);

	if (!newtok) {
		FUNC0(*tok);
		*tok = NULL;
		return -1;
	}

	if (!*tok)
		FUNC3(newtok, buf);
	else
		FUNC2(newtok, buf);
	*tok = newtok;

	return 0;
}