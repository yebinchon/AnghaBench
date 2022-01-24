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
typedef  int /*<<< orphan*/  serr ;
typedef  int /*<<< orphan*/  nr_cpus_avail_str ;
typedef  int /*<<< orphan*/  linux_version_code_str ;
struct TYPE_2__ {char* clang_opt; char* clang_bpf_cmd_template; char* opts; int /*<<< orphan*/  llc_path; int /*<<< orphan*/  clang_path; } ;

/* Variables and functions */
 char* CLANG_BPF_CMD_DEFAULT_TEMPLATE ; 
 int ENOENT ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  PERF_INCLUDE_DIR ; 
 int STRERR_BUFSIZE ; 
 scalar_t__ FUNC0 (char**,char*,char const*,...) ; 
 int errno ; 
 scalar_t__ FUNC1 (unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**,char**) ; 
 int FUNC5 () ; 
 TYPE_1__ llvm_param ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (char const*,void**,size_t*) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int FUNC15(const char *path, void **p_obj_buf,
		      size_t *p_obj_buf_sz)
{
	size_t obj_buf_sz;
	void *obj_buf = NULL;
	int err, nr_cpus_avail;
	unsigned int kernel_version;
	char linux_version_code_str[64];
	const char *clang_opt = llvm_param.clang_opt;
	char clang_path[PATH_MAX], llc_path[PATH_MAX], abspath[PATH_MAX], nr_cpus_avail_str[64];
	char serr[STRERR_BUFSIZE];
	char *kbuild_dir = NULL, *kbuild_include_opts = NULL,
	     *perf_bpf_include_opts = NULL;
	const char *template = llvm_param.clang_bpf_cmd_template;
	char *pipe_template = NULL;
	const char *opts = llvm_param.opts;
	char *command_echo = NULL, *command_out;
	char *perf_include_dir = FUNC13(PERF_INCLUDE_DIR);

	if (path[0] != '-' && FUNC9(path, abspath) == NULL) {
		err = errno;
		FUNC7("ERROR: problems with path %s: %s\n",
		       path, FUNC12(err, serr, sizeof(serr)));
		return -err;
	}

	if (!template)
		template = CLANG_BPF_CMD_DEFAULT_TEMPLATE;

	err = FUNC10(llvm_param.clang_path,
			     "clang", clang_path);
	if (err) {
		FUNC7(
"ERROR:\tunable to find clang.\n"
"Hint:\tTry to install latest clang/llvm to support BPF. Check your $PATH\n"
"     \tand 'clang-path' option in [llvm] section of ~/.perfconfig.\n");
		FUNC14();
		return -ENOENT;
	}

	/*
	 * This is an optional work. Even it fail we can continue our
	 * work. Needn't to check error return.
	 */
	FUNC4(&kbuild_dir, &kbuild_include_opts);

	nr_cpus_avail = FUNC5();
	FUNC11(nr_cpus_avail_str, sizeof(nr_cpus_avail_str), "%d",
		 nr_cpus_avail);

	if (FUNC1(&kernel_version, NULL, 0))
		kernel_version = 0;

	FUNC11(linux_version_code_str, sizeof(linux_version_code_str),
		 "0x%x", kernel_version);
	if (FUNC0(&perf_bpf_include_opts, "-I%s/bpf", perf_include_dir) < 0)
		goto errout;
	FUNC2("NR_CPUS", nr_cpus_avail_str);
	FUNC2("LINUX_VERSION_CODE", linux_version_code_str);
	FUNC2("CLANG_EXEC", clang_path);
	FUNC2("CLANG_OPTIONS", clang_opt);
	FUNC2("KERNEL_INC_OPTIONS", kbuild_include_opts);
	FUNC2("PERF_BPF_INC_OPTIONS", perf_bpf_include_opts);
	FUNC2("WORKING_DIR", kbuild_dir ? : ".");

	if (opts) {
		err = FUNC10(llvm_param.llc_path, "llc", llc_path);
		if (err) {
			FUNC7("ERROR:\tunable to find llc.\n"
			       "Hint:\tTry to install latest clang/llvm to support BPF. Check your $PATH\n"
			       "     \tand 'llc-path' option in [llvm] section of ~/.perfconfig.\n");
			FUNC14();
			goto errout;
		}

		if (FUNC0(&pipe_template, "%s -emit-llvm | %s -march=bpf %s -filetype=obj -o -",
			      template, llc_path, opts) < 0) {
			FUNC7("ERROR:\tnot enough memory to setup command line\n");
			goto errout;
		}

		template = pipe_template;

	}

	/*
	 * Since we may reset clang's working dir, path of source file
	 * should be transferred into absolute path, except we want
	 * stdin to be source file (testing).
	 */
	FUNC2("CLANG_SOURCE",
		      (path[0] == '-') ? path : abspath);

	FUNC6("llvm compiling command template: %s\n", template);

	if (FUNC0(&command_echo, "echo -n \"%s\"", template) < 0)
		goto errout;

	err = FUNC8(command_echo, (void **) &command_out, NULL);
	if (err)
		goto errout;

	FUNC6("llvm compiling command : %s\n", command_out);

	err = FUNC8(template, &obj_buf, &obj_buf_sz);
	if (err) {
		FUNC7("ERROR:\tunable to compile %s\n", path);
		FUNC7("Hint:\tCheck error message shown above.\n");
		FUNC7("Hint:\tYou can also pre-compile it into .o using:\n");
		FUNC7("     \t\tclang -target bpf -O2 -c %s\n", path);
		FUNC7("     \twith proper -I and -D options.\n");
		goto errout;
	}

	FUNC3(command_echo);
	FUNC3(command_out);
	FUNC3(kbuild_dir);
	FUNC3(kbuild_include_opts);
	FUNC3(perf_bpf_include_opts);
	FUNC3(perf_include_dir);

	if (!p_obj_buf)
		FUNC3(obj_buf);
	else
		*p_obj_buf = obj_buf;

	if (p_obj_buf_sz)
		*p_obj_buf_sz = obj_buf_sz;
	return 0;
errout:
	FUNC3(command_echo);
	FUNC3(kbuild_dir);
	FUNC3(kbuild_include_opts);
	FUNC3(obj_buf);
	FUNC3(perf_bpf_include_opts);
	FUNC3(perf_include_dir);
	FUNC3(pipe_template);
	if (p_obj_buf)
		*p_obj_buf = NULL;
	if (p_obj_buf_sz)
		*p_obj_buf_sz = 0;
	return err;
}