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
 char* FUNC0 (char*) ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  mpid ; 
 scalar_t__ nerrs ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(int argc, char **argv)
{
	char *tmp1, *tmp2, *our_path;

	/* Find our path */
	tmp1 = FUNC9(argv[0]);
	if (!tmp1)
		FUNC5("strdup - %s\n", FUNC10(errno));
	tmp2 = FUNC0(tmp1);
	our_path = FUNC9(tmp2);
	if (!our_path)
		FUNC5("strdup - %s\n", FUNC10(errno));
	FUNC3(tmp1);

	mpid = FUNC4();

	if (FUNC2()) {
		FUNC6();
		FUNC8(12);
		FUNC7("[RUN]\t+++ Tests with uid == 0 +++\n");
		return FUNC1(0, our_path);
	}

	FUNC7("==================================================\n");

	if (FUNC2()) {
		FUNC6();
		FUNC8(9);
		FUNC7("[RUN]\t+++ Tests with uid != 0 +++\n");
		return FUNC1(1, our_path);
	}

	return nerrs ? 1 : 0;
}