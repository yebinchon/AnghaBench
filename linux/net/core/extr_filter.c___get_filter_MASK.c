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
struct sock_fprog {int /*<<< orphan*/  len; int /*<<< orphan*/  filter; } ;
struct sock {int dummy; } ;
struct bpf_prog {int /*<<< orphan*/  len; int /*<<< orphan*/  insns; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EPERM ; 
 struct bpf_prog* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_FILTER_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct sock_fprog*) ; 
 struct bpf_prog* FUNC4 (struct bpf_prog*,int /*<<< orphan*/ *) ; 
 struct bpf_prog* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bpf_prog*,struct sock_fprog*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC9 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
struct bpf_prog *FUNC10(struct sock_fprog *fprog, struct sock *sk)
{
	unsigned int fsize = FUNC3(fprog);
	struct bpf_prog *prog;
	int err;

	if (FUNC9(sk, SOCK_FILTER_LOCKED))
		return FUNC0(-EPERM);

	/* Make sure new filter is there and in the right amounts. */
	if (!FUNC2(fprog->filter, fprog->len))
		return FUNC0(-EINVAL);

	prog = FUNC5(FUNC6(fprog->len), 0);
	if (!prog)
		return FUNC0(-ENOMEM);

	if (FUNC8(prog->insns, fprog->filter, fsize)) {
		FUNC1(prog);
		return FUNC0(-EFAULT);
	}

	prog->len = fprog->len;

	err = FUNC7(prog, fprog);
	if (err) {
		FUNC1(prog);
		return FUNC0(-ENOMEM);
	}

	/* bpf_prepare_filter() already takes care of freeing
	 * memory in case something goes wrong.
	 */
	return FUNC4(prog, NULL);
}