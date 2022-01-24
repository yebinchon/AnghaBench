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
struct sock_fprog {int dummy; } ;
struct sock {int dummy; } ;
struct bpf_prog {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int FUNC1 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_prog*) ; 
 struct bpf_prog* FUNC3 (struct sock_fprog*,struct sock*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sock*,struct bpf_prog*) ; 
 scalar_t__ sysctl_optmem_max ; 

int FUNC6(struct sock_fprog *fprog, struct sock *sk)
{
	struct bpf_prog *prog = FUNC3(fprog, sk);
	int err;

	if (FUNC0(prog))
		return FUNC1(prog);

	if (FUNC4(prog->len) > sysctl_optmem_max)
		err = -ENOMEM;
	else
		err = FUNC5(sk, prog);

	if (err)
		FUNC2(prog);

	return err;
}