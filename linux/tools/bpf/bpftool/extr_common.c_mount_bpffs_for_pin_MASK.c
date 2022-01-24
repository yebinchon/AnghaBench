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
 int ERR_MAX_LEN ; 
 scalar_t__ block_mount ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__) ; 
 int FUNC4 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (char const*) ; 

int FUNC8(const char *name)
{
	char err_str[ERR_MAX_LEN];
	char *file;
	char *dir;
	int err = 0;

	file = FUNC3(FUNC7(name) + 1);
	FUNC6(file, name);
	dir = FUNC0(file);

	if (FUNC2(dir))
		/* nothing to do if already mounted */
		goto out_free;

	if (block_mount) {
		FUNC5("no BPF file system found, not mounting it due to --nomount option");
		err = -1;
		goto out_free;
	}

	err = FUNC4(dir, "bpf", err_str, ERR_MAX_LEN);
	if (err) {
		err_str[ERR_MAX_LEN - 1] = '\0';
		FUNC5("can't mount BPF file system to pin the object (%s): %s",
		      name, err_str);
	}

out_free:
	FUNC1(file);
	return err;
}