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
struct sock {scalar_t__ sk_family; int sk_ipv6only; } ;
struct net {int dummy; } ;
struct group_info {int ngroups; int /*<<< orphan*/ * gid; } ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct group_info* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct group_info*) ; 
 struct net* FUNC5 (struct sock*) ; 

int FUNC6(struct sock *sk)
{
	struct net *net = FUNC5(sk);
	kgid_t group = FUNC0();
	struct group_info *group_info;
	int i;
	kgid_t low, high;
	int ret = 0;

	if (sk->sk_family == AF_INET6)
		sk->sk_ipv6only = 1;

	FUNC3(net, &low, &high);
	if (FUNC2(low, group) && FUNC2(group, high))
		return 0;

	group_info = FUNC1();
	for (i = 0; i < group_info->ngroups; i++) {
		kgid_t gid = group_info->gid[i];

		if (FUNC2(low, gid) && FUNC2(gid, high))
			goto out_release_group;
	}

	ret = -EACCES;

out_release_group:
	FUNC4(group_info);
	return ret;
}