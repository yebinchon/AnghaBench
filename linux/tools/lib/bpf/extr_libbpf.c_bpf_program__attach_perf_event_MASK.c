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
struct bpf_program {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * destroy; } ;
struct bpf_link_fd {int fd; TYPE_1__ link; } ;
struct bpf_link {int dummy; } ;
typedef  int /*<<< orphan*/  errmsg ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct bpf_link* FUNC0 (int) ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_ENABLE ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_SET_BPF ; 
 int STRERR_BUFSIZE ; 
 int /*<<< orphan*/  bpf_link__destroy_perf_event ; 
 int FUNC1 (struct bpf_program*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_program*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_link_fd*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 struct bpf_link_fd* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 

struct bpf_link *FUNC8(struct bpf_program *prog,
						int pfd)
{
	char errmsg[STRERR_BUFSIZE];
	struct bpf_link_fd *link;
	int prog_fd, err;

	if (pfd < 0) {
		FUNC7("program '%s': invalid perf event FD %d\n",
			   FUNC2(prog, false), pfd);
		return FUNC0(-EINVAL);
	}
	prog_fd = FUNC1(prog);
	if (prog_fd < 0) {
		FUNC7("program '%s': can't attach BPF program w/o FD (did you load it?)\n",
			   FUNC2(prog, false));
		return FUNC0(-EINVAL);
	}

	link = FUNC6(sizeof(*link));
	if (!link)
		return FUNC0(-ENOMEM);
	link->link.destroy = &bpf_link__destroy_perf_event;
	link->fd = pfd;

	if (FUNC4(pfd, PERF_EVENT_IOC_SET_BPF, prog_fd) < 0) {
		err = -errno;
		FUNC3(link);
		FUNC7("program '%s': failed to attach to pfd %d: %s\n",
			   FUNC2(prog, false), pfd,
			   FUNC5(err, errmsg, sizeof(errmsg)));
		return FUNC0(err);
	}
	if (FUNC4(pfd, PERF_EVENT_IOC_ENABLE, 0) < 0) {
		err = -errno;
		FUNC3(link);
		FUNC7("program '%s': failed to enable pfd %d: %s\n",
			   FUNC2(prog, false), pfd,
			   FUNC5(err, errmsg, sizeof(errmsg)));
		return FUNC0(err);
	}
	return (struct bpf_link *)link;
}