#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int dump_obj; int user_set_param; void* opts; void* kbuild_opts; void* kbuild_dir; void* clang_opt; void* clang_bpf_cmd_template; void* clang_path; } ;

/* Variables and functions */
 TYPE_1__ llvm_param ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 void* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 

int FUNC5(const char *var, const char *value)
{
	if (!FUNC4(var, "llvm."))
		return 0;
	var += sizeof("llvm.") - 1;

	if (!FUNC2(var, "clang-path"))
		llvm_param.clang_path = FUNC3(value);
	else if (!FUNC2(var, "clang-bpf-cmd-template"))
		llvm_param.clang_bpf_cmd_template = FUNC3(value);
	else if (!FUNC2(var, "clang-opt"))
		llvm_param.clang_opt = FUNC3(value);
	else if (!FUNC2(var, "kbuild-dir"))
		llvm_param.kbuild_dir = FUNC3(value);
	else if (!FUNC2(var, "kbuild-opts"))
		llvm_param.kbuild_opts = FUNC3(value);
	else if (!FUNC2(var, "dump-obj"))
		llvm_param.dump_obj = !!FUNC0(var, value);
	else if (!FUNC2(var, "opts"))
		llvm_param.opts = FUNC3(value);
	else {
		FUNC1("Invalid LLVM config option: %s\n", value);
		return -1;
	}
	llvm_param.user_set_param = true;
	return 0;
}