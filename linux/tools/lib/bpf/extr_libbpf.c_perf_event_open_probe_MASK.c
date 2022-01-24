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
typedef  int /*<<< orphan*/  uint64_t ;
struct perf_event_attr {int config; int size; int type; int /*<<< orphan*/  config2; int /*<<< orphan*/  config1; } ;
typedef  int /*<<< orphan*/  errmsg ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_FLAG_FD_CLOEXEC ; 
 int STRERR_BUFSIZE ; 
 int /*<<< orphan*/  __NR_perf_event_open ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct perf_event_attr*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(bool uprobe, bool retprobe, const char *name,
				 uint64_t offset, int pid)
{
	struct perf_event_attr attr = {};
	char errmsg[STRERR_BUFSIZE];
	int type, pfd, err;

	type = uprobe ? FUNC2()
		      : FUNC0();
	if (type < 0) {
		FUNC5("failed to determine %s perf type: %s\n",
			   uprobe ? "uprobe" : "kprobe",
			   FUNC4(type, errmsg, sizeof(errmsg)));
		return type;
	}
	if (retprobe) {
		int bit = uprobe ? FUNC3()
				 : FUNC1();

		if (bit < 0) {
			FUNC5("failed to determine %s retprobe bit: %s\n",
				   uprobe ? "uprobe" : "kprobe",
				   FUNC4(bit, errmsg,
						     sizeof(errmsg)));
			return bit;
		}
		attr.config |= 1 << bit;
	}
	attr.size = sizeof(attr);
	attr.type = type;
	attr.config1 = FUNC6(name); /* kprobe_func or uprobe_path */
	attr.config2 = offset;		 /* kprobe_addr or probe_offset */

	/* pid filter is meaningful only for uprobes */
	pfd = FUNC7(__NR_perf_event_open, &attr,
		      pid < 0 ? -1 : pid /* pid */,
		      pid == -1 ? 0 : -1 /* cpu */,
		      -1 /* group_fd */, PERF_FLAG_FD_CLOEXEC);
	if (pfd < 0) {
		err = -errno;
		FUNC5("%s perf_event_open() failed: %s\n",
			   uprobe ? "uprobe" : "kprobe",
			   FUNC4(err, errmsg, sizeof(errmsg)));
		return err;
	}
	return pfd;
}