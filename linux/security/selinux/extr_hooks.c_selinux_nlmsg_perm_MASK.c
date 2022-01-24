#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sock {int /*<<< orphan*/  sk_protocol; struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sclass; } ;
struct sk_buff {scalar_t__ len; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ NLMSG_HDRLEN ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nlmsghdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* secclass_map ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  selinux_state ; 
 int FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct sk_buff *skb)
{
	int err = 0;
	u32 perm;
	struct nlmsghdr *nlh;
	struct sk_security_struct *sksec = sk->sk_security;

	if (skb->len < NLMSG_HDRLEN) {
		err = -EINVAL;
		goto out;
	}
	nlh = FUNC1(skb);

	err = FUNC4(sksec->sclass, nlh->nlmsg_type, &perm);
	if (err) {
		if (err == -EINVAL) {
			FUNC2("SELinux: unrecognized netlink"
			       " message: protocol=%hu nlmsg_type=%hu sclass=%s"
			       " pig=%d comm=%s\n",
			       sk->sk_protocol, nlh->nlmsg_type,
			       secclass_map[sksec->sclass - 1].name,
			       FUNC6(current), current->comm);
			if (!FUNC0(&selinux_state) ||
			    FUNC3(&selinux_state))
				err = 0;
		}

		/* Ignore */
		if (err == -ENOENT)
			err = 0;
		goto out;
	}

	err = FUNC5(sk, perm);
out:
	return err;
}