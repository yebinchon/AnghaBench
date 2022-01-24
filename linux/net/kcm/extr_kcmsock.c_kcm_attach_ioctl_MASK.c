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
struct socket {int /*<<< orphan*/  file; } ;
struct kcm_attach {int /*<<< orphan*/  bpf_fd; int /*<<< orphan*/  fd; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_SOCKET_FILTER ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int FUNC1 (struct bpf_prog*) ; 
 struct bpf_prog* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct socket*,struct socket*,struct bpf_prog*) ; 
 struct socket* FUNC6 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(struct socket *sock, struct kcm_attach *info)
{
	struct socket *csock;
	struct bpf_prog *prog;
	int err;

	csock = FUNC6(info->fd, &err);
	if (!csock)
		return -ENOENT;

	prog = FUNC2(info->bpf_fd, BPF_PROG_TYPE_SOCKET_FILTER);
	if (FUNC0(prog)) {
		err = FUNC1(prog);
		goto out;
	}

	err = FUNC5(sock, csock, prog);
	if (err) {
		FUNC3(prog);
		goto out;
	}

	/* Keep reference on file also */

	return 0;
out:
	FUNC4(csock->file);
	return err;
}