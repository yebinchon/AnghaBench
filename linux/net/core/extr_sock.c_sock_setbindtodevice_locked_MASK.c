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
struct sock {int sk_bound_dev_if; TYPE_1__* sk_prot; } ;
struct net {int /*<<< orphan*/  user_ns; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* rehash ) (struct sock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_RAW ; 
 int EINVAL ; 
 int ENOPROTOOPT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct net* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, int ifindex)
{
	int ret = -ENOPROTOOPT;
#ifdef CONFIG_NETDEVICES
	struct net *net = sock_net(sk);

	/* Sorry... */
	ret = -EPERM;
	if (!ns_capable(net->user_ns, CAP_NET_RAW))
		goto out;

	ret = -EINVAL;
	if (ifindex < 0)
		goto out;

	sk->sk_bound_dev_if = ifindex;
	if (sk->sk_prot->rehash)
		sk->sk_prot->rehash(sk);
	sk_dst_reset(sk);

	ret = 0;

out:
#endif

	return ret;
}