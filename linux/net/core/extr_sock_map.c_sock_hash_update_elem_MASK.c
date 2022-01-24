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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct socket {int /*<<< orphan*/  file; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bpf_map*,void*,struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct socket* FUNC5 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC6(struct bpf_map *map, void *key,
				 void *value, u64 flags)
{
	u32 ufd = *(u32 *)value;
	struct socket *sock;
	struct sock *sk;
	int ret;

	sock = FUNC5(ufd, &ret);
	if (!sock)
		return ret;
	sk = sock->sk;
	if (!sk) {
		ret = -EINVAL;
		goto out;
	}
	if (!FUNC3(sk) ||
	    sk->sk_state != TCP_ESTABLISHED) {
		ret = -EOPNOTSUPP;
		goto out;
	}

	FUNC2(sk);
	ret = FUNC1(map, key, sk, flags);
	FUNC4(sk);
out:
	FUNC0(sock->file);
	return ret;
}