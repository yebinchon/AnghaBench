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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int FUNC1 (struct bpf_prog*) ; 
 struct bpf_prog* FUNC2 (int /*<<< orphan*/ ,struct sock*) ; 
 int FUNC3 (struct bpf_prog*,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_prog*) ; 

int FUNC5(u32 ufd, struct sock *sk)
{
	struct bpf_prog *prog = FUNC2(ufd, sk);
	int err;

	if (FUNC0(prog))
		return FUNC1(prog);

	err = FUNC3(prog, sk);
	if (err < 0) {
		FUNC4(prog);
		return err;
	}

	return 0;
}