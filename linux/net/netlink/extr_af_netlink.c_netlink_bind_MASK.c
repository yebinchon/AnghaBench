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
struct socket {struct sock* sk; } ;
struct sockaddr_nl {scalar_t__ nl_family; unsigned long nl_groups; scalar_t__ nl_pid; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct netlink_sock {unsigned long ngroups; int bound; scalar_t__ portid; int (* netlink_bind ) (struct net*,int) ;unsigned long* groups; scalar_t__ subscriptions; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_NETLINK ; 
 unsigned long BITS_PER_LONG ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  NL_CFG_F_NONROOT_RECV ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct socket*) ; 
 int FUNC3 (struct sock*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,unsigned long,struct sock*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,scalar_t__) ; 
 struct netlink_sock* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 struct net* FUNC14 (struct sock*) ; 
 int FUNC15 (struct net*,int) ; 
 int /*<<< orphan*/  FUNC16 (int,unsigned long*) ; 

__attribute__((used)) static int FUNC17(struct socket *sock, struct sockaddr *addr,
			int addr_len)
{
	struct sock *sk = sock->sk;
	struct net *net = FUNC14(sk);
	struct netlink_sock *nlk = FUNC12(sk);
	struct sockaddr_nl *nladdr = (struct sockaddr_nl *)addr;
	int err = 0;
	unsigned long groups;
	bool bound;

	if (addr_len < sizeof(struct sockaddr_nl))
		return -EINVAL;

	if (nladdr->nl_family != AF_NETLINK)
		return -EINVAL;
	groups = nladdr->nl_groups;

	/* Only superuser is allowed to listen multicasts */
	if (groups) {
		if (!FUNC1(sock, NL_CFG_F_NONROOT_RECV))
			return -EPERM;
		err = FUNC5(sk);
		if (err)
			return err;
	}

	if (nlk->ngroups < BITS_PER_LONG)
		groups &= (1UL << nlk->ngroups) - 1;

	bound = nlk->bound;
	if (bound) {
		/* Ensure nlk->portid is up-to-date. */
		FUNC13();

		if (nladdr->nl_pid != nlk->portid)
			return -EINVAL;
	}

	FUNC4();
	if (nlk->netlink_bind && groups) {
		int group;

		for (group = 0; group < nlk->ngroups; group++) {
			if (!FUNC16(group, &groups))
				continue;
			err = nlk->netlink_bind(net, group + 1);
			if (!err)
				continue;
			FUNC8(group, groups, sk);
			goto unlock;
		}
	}

	/* No need for barriers here as we return to user-space without
	 * using any of the bound attributes.
	 */
	if (!bound) {
		err = nladdr->nl_pid ?
			FUNC3(sk, nladdr->nl_pid) :
			FUNC2(sock);
		if (err) {
			FUNC8(nlk->ngroups, groups, sk);
			goto unlock;
		}
	}

	if (!groups && (nlk->groups == NULL || !(u32)nlk->groups[0]))
		goto unlock;
	FUNC9();

	FUNC6();
	FUNC11(sk, nlk->subscriptions +
					 FUNC0(groups) -
					 FUNC0(nlk->groups[0]));
	nlk->groups[0] = (nlk->groups[0] & ~0xffffffffUL) | groups;
	FUNC10(sk);
	FUNC7();

	return 0;

unlock:
	FUNC9();
	return err;
}