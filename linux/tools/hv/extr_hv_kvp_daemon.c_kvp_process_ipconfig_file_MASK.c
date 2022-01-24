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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(char *cmd,
					char *config_buf, unsigned int len,
					int element_size, int offset)
{
	char buf[256];
	char *p;
	char *x;
	FILE *file;

	/*
	 * First execute the command.
	 */
	file = FUNC3(cmd, "r");
	if (file == NULL)
		return;

	if (offset == 0)
		FUNC1(config_buf, 0, len);
	while ((p = FUNC0(buf, sizeof(buf), file)) != NULL) {
		if (len < FUNC6(config_buf) + element_size + 1)
			break;

		x = FUNC5(p, '\n');
		if (x)
			*x = '\0';

		FUNC4(config_buf, p);
		FUNC4(config_buf, ";");
	}
	FUNC2(file);
}