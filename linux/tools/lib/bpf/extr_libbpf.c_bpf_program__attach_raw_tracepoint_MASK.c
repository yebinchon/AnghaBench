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
 int STRERR_BUFSIZE ; 
 int /*<<< orphan*/  bpf_link__destroy_fd ; 
 int FUNC1 (struct bpf_program*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_program*,int) ; 
 int FUNC3 (char const*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_link_fd*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 struct bpf_link_fd* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 

struct bpf_link *FUNC8(struct bpf_program *prog,
						    const char *tp_name)
{
	char errmsg[STRERR_BUFSIZE];
	struct bpf_link_fd *link;
	int prog_fd, pfd;

	prog_fd = FUNC1(prog);
	if (prog_fd < 0) {
		FUNC7("program '%s': can't attach before loaded\n",
			   FUNC2(prog, false));
		return FUNC0(-EINVAL);
	}

	link = FUNC6(sizeof(*link));
	if (!link)
		return FUNC0(-ENOMEM);
	link->link.destroy = &bpf_link__destroy_fd;

	pfd = FUNC3(tp_name, prog_fd);
	if (pfd < 0) {
		pfd = -errno;
		FUNC4(link);
		FUNC7("program '%s': failed to attach to raw tracepoint '%s': %s\n",
			   FUNC2(prog, false), tp_name,
			   FUNC5(pfd, errmsg, sizeof(errmsg)));
		return FUNC0(pfd);
	}
	link->fd = pfd;
	return (struct bpf_link *)link;
}