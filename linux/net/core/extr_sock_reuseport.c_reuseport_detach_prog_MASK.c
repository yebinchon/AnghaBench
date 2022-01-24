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
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sock_reuseport* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bpf_prog*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reuseport_lock ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct sock *sk)
{
	struct sock_reuseport *reuse;
	struct bpf_prog *old_prog;

	if (!FUNC1(sk->sk_reuseport_cb))
		return sk->sk_reuseport ? -ENOENT : -EINVAL;

	old_prog = NULL;
	FUNC5(&reuseport_lock);
	reuse = FUNC2(sk->sk_reuseport_cb,
					  FUNC0(&reuseport_lock));
	FUNC3(reuse->prog, old_prog,
			   FUNC0(&reuseport_lock));
	FUNC6(&reuseport_lock);

	if (!old_prog)
		return -ENOENT;

	FUNC4(old_prog);
	return 0;
}