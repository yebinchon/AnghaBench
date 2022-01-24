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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (char*) ; 
 char** dsos ; 
 char** FUNC2 (int) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(int cnt, int size)
{
	int i;

	dsos = FUNC2(sizeof(*dsos) * cnt);
	FUNC0("failed to alloc dsos array", dsos);

	for (i = 0; i < cnt; i++) {
		char *file;

		file = FUNC3(size);
		FUNC0("failed to get dso file", file);

		dsos[i] = FUNC1(file);
		FUNC0("failed to get dso", dsos[i]);
	}

	return 0;
}