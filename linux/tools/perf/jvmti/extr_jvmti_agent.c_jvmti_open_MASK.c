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
struct jitheader {int total_size; int pid; int /*<<< orphan*/  flags; scalar_t__ timestamp; int /*<<< orphan*/  version; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  header ;
typedef  void FILE ;

/* Variables and functions */
 int /*<<< orphan*/  JITDUMP_FLAGS_ARCH_TIMESTAMP ; 
 int /*<<< orphan*/  JITHEADER_MAGIC ; 
 int /*<<< orphan*/  JITHEADER_VERSION ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct jitheader*,int,int,void*) ; 
 scalar_t__ FUNC5 (struct jitheader*) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* jit_path ; 
 int /*<<< orphan*/  FUNC8 (struct jitheader*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (char*,int,int) ; 
 char* perf_clk_id ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (char*,int,char*,char*,int) ; 
 scalar_t__ use_arch_timestamp ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 

void *FUNC15(void)
{
	char dump_path[PATH_MAX];
	struct jitheader header;
	int fd, ret;
	FILE *fp;

	FUNC7();

	/*
	 * check if clockid is supported
	 */
	if (!FUNC10()) {
		if (use_arch_timestamp)
			FUNC14("jvmti: arch timestamp not supported");
		else
			FUNC14("jvmti: kernel does not support %d clock id", perf_clk_id);
	}

	FUNC8(&header, 0, sizeof(header));

	/*
	 * jitdump file dir
	 */
	if (FUNC1() < 0)
		return NULL;

	/*
	 * jitdump file name
	 */
	ret = FUNC12(dump_path, PATH_MAX, "%s/jit-%i.dump", jit_path, FUNC6());
	if (ret >= PATH_MAX) {
		FUNC14("jvmti: cannot generate jitdump file full path because"
			" %s/jit-%i.dump is too long, please check the cwd,"
			" JITDUMPDIR, and HOME variables", jit_path, FUNC6());
		return NULL;
	}

	fd = FUNC9(dump_path, O_CREAT|O_TRUNC|O_RDWR, 0666);
	if (fd == -1)
		return NULL;

	/*
	 * create perf.data maker for the jitdump file
	 */
	if (FUNC11(fd)) {
		FUNC14("jvmti: failed to create marker file");
		return NULL;
	}

	fp = FUNC3(fd, "w+");
	if (!fp) {
		FUNC13("jvmti: cannot create %s", dump_path);
		FUNC0(fd);
		goto error;
	}

	FUNC14("jvmti: jitdump in %s", dump_path);

	if (FUNC5(&header)) {
		FUNC13("get_e_machine failed\n");
		goto error;
	}

	header.magic      = JITHEADER_MAGIC;
	header.version    = JITHEADER_VERSION;
	header.total_size = sizeof(header);
	header.pid        = FUNC6();

	header.timestamp = FUNC10();

	if (use_arch_timestamp)
		header.flags |= JITDUMP_FLAGS_ARCH_TIMESTAMP;

	if (!FUNC4(&header, sizeof(header), 1, fp)) {
		FUNC13("jvmti: cannot write dumpfile header");
		goto error;
	}
	return fp;
error:
	FUNC2(fp);
	return NULL;
}