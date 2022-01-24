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
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (void*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char) ; 

void FUNC10(const char *path, void *obj_buf, size_t size)
{
	char *obj_path = FUNC7(path);
	FILE *fp;
	char *p;

	if (!obj_path) {
		FUNC5("WARNING: Not enough memory, skip object dumping\n");
		return;
	}

	p = FUNC9(obj_path, '.');
	if (!p || (FUNC6(p, ".c") != 0)) {
		FUNC5("WARNING: invalid llvm source path: '%s', skip object dumping\n",
			   obj_path);
		goto out;
	}

	p[1] = 'o';
	fp = FUNC1(obj_path, "wb");
	if (!fp) {
		FUNC5("WARNING: failed to open '%s': %s, skip object dumping\n",
			   obj_path, FUNC8(errno));
		goto out;
	}

	FUNC4("LLVM: dumping %s\n", obj_path);
	if (FUNC3(obj_buf, size, 1, fp) != 1)
		FUNC5("WARNING: failed to write to file '%s': %s, skip object dumping\n",
			   obj_path, FUNC8(errno));
	FUNC0(fp);
out:
	FUNC2(obj_path);
}