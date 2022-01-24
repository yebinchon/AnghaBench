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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CMD_EX ; 
 int CMD_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(FILE *fin, FILE *fout)
{
	char *buf;

	FUNC4(fin, fout);

	while ((buf = FUNC5("> ")) != NULL) {
		int ret = FUNC1(buf);
		if (ret == CMD_EX)
			break;
		if (ret == CMD_OK && FUNC6(buf) > 0)
			FUNC0(buf);

		FUNC3(buf);
	}

	FUNC2(fin, fout);
	return 0;
}