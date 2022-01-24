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
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int FUNC1 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_prog*) ; 
 struct bpf_prog* FUNC3 (struct sock_fprog*,struct sock*) ; 
 int FUNC4 (struct bpf_prog*,struct sock*) ; 

int FUNC5(struct sock_fprog *fprog, struct sock *sk)
{
	struct bpf_prog *prog = FUNC3(fprog, sk);
	int err;

	if (FUNC0(prog))
		return FUNC1(prog);

	err = FUNC4(prog, sk);
	if (err < 0) {
		FUNC2(prog);
		return err;
	}

	return 0;
}