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
struct sock_reuseport {int /*<<< orphan*/  prog; } ;
struct sock {int /*<<< orphan*/  sk_reuseport_cb; scalar_t__ sk_reuseport; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bpf_prog*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sock*,int) ; 
 int /*<<< orphan*/  reuseport_lock ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_prog*) ; 
 scalar_t__ FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct sock *sk, struct bpf_prog *prog)
{
	struct sock_reuseport *reuse;
	struct bpf_prog *old_prog;

	if (FUNC6(sk) && sk->sk_reuseport) {
		int err = FUNC4(sk, false);

		if (err)
			return err;
	} else if (!FUNC1(sk->sk_reuseport_cb)) {
		/* The socket wasn't bound with SO_REUSEPORT */
		return -EINVAL;
	}

	FUNC7(&reuseport_lock);
	reuse = FUNC3(sk->sk_reuseport_cb,
					  FUNC0(&reuseport_lock));
	old_prog = FUNC3(reuse->prog,
					     FUNC0(&reuseport_lock));
	FUNC2(reuse->prog, prog);
	FUNC8(&reuseport_lock);

	FUNC5(old_prog);
	return 0;
}