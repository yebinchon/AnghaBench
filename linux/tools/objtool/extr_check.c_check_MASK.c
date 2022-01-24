#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int hints; int /*<<< orphan*/  elf; int /*<<< orphan*/  insn_list; int /*<<< orphan*/  ignore_unreachables; int /*<<< orphan*/  c_file; int /*<<< orphan*/  insn_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__ file ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  initial_func_cfi ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  no_unreachable ; 
 char const* objname ; 
 scalar_t__ retpoline ; 
 int FUNC11 (TYPE_1__*) ; 
 int FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int FUNC14 (TYPE_1__*) ; 

int FUNC15(const char *_objname, bool orc)
{
	int ret, warnings = 0;

	objname = _objname;

	file.elf = FUNC6(objname, orc ? O_RDWR : O_RDONLY);
	if (!file.elf)
		return 1;

	FUNC0(&file.insn_list);
	FUNC9(file.insn_hash);
	file.c_file = FUNC8(file.elf, ".comment");
	file.ignore_unreachables = no_unreachable;
	file.hints = false;

	FUNC1(&initial_func_cfi);

	ret = FUNC5(&file);
	if (ret < 0)
		goto out;
	warnings += ret;

	if (FUNC10(&file.insn_list))
		goto out;

	if (retpoline) {
		ret = FUNC13(&file);
		if (ret < 0)
			return ret;
		warnings += ret;
	}

	ret = FUNC11(&file);
	if (ret < 0)
		goto out;
	warnings += ret;

	ret = FUNC14(&file);
	if (ret < 0)
		goto out;
	warnings += ret;

	if (!warnings) {
		ret = FUNC12(&file);
		if (ret < 0)
			goto out;
		warnings += ret;
	}

	if (orc) {
		ret = FUNC3(&file);
		if (ret < 0)
			goto out;

		ret = FUNC4(&file);
		if (ret < 0)
			goto out;

		ret = FUNC7(file.elf);
		if (ret < 0)
			goto out;
	}

out:
	FUNC2(&file);

	/* ignore warnings for now until we get all the code cleaned up */
	if (ret || warnings)
		return 0;
	return 0;
}