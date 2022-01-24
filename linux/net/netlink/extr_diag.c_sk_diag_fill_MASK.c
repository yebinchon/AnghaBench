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
struct sock {int /*<<< orphan*/  sk_state; int /*<<< orphan*/  sk_protocol; int /*<<< orphan*/  sk_type; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_sock {int /*<<< orphan*/  dst_group; int /*<<< orphan*/  dst_portid; int /*<<< orphan*/  portid; } ;
struct netlink_diag_req {int ndiag_show; } ;
struct netlink_diag_msg {int ndiag_ino; int /*<<< orphan*/  ndiag_cookie; int /*<<< orphan*/  ndiag_dst_group; int /*<<< orphan*/  ndiag_dst_portid; int /*<<< orphan*/  ndiag_portid; int /*<<< orphan*/  ndiag_state; int /*<<< orphan*/  ndiag_protocol; int /*<<< orphan*/  ndiag_type; int /*<<< orphan*/  ndiag_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_NETLINK ; 
 int EMSGSIZE ; 
 int NDIAG_SHOW_FLAGS ; 
 int NDIAG_SHOW_GROUPS ; 
 int NDIAG_SHOW_MEMINFO ; 
 int /*<<< orphan*/  NETLINK_DIAG_MEMINFO ; 
 int /*<<< orphan*/  SOCK_DIAG_BY_FAMILY ; 
 struct netlink_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 struct netlink_diag_msg* FUNC2 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sock *sk, struct sk_buff *skb,
			struct netlink_diag_req *req,
			u32 portid, u32 seq, u32 flags, int sk_ino)
{
	struct nlmsghdr *nlh;
	struct netlink_diag_msg *rep;
	struct netlink_sock *nlk = FUNC0(sk);

	nlh = FUNC4(skb, portid, seq, SOCK_DIAG_BY_FAMILY, sizeof(*rep),
			flags);
	if (!nlh)
		return -EMSGSIZE;

	rep = FUNC2(nlh);
	rep->ndiag_family	= AF_NETLINK;
	rep->ndiag_type		= sk->sk_type;
	rep->ndiag_protocol	= sk->sk_protocol;
	rep->ndiag_state	= sk->sk_state;

	rep->ndiag_ino		= sk_ino;
	rep->ndiag_portid	= nlk->portid;
	rep->ndiag_dst_portid	= nlk->dst_portid;
	rep->ndiag_dst_group	= nlk->dst_group;
	FUNC8(sk, rep->ndiag_cookie);

	if ((req->ndiag_show & NDIAG_SHOW_GROUPS) &&
	    FUNC5(sk, skb))
		goto out_nlmsg_trim;

	if ((req->ndiag_show & NDIAG_SHOW_MEMINFO) &&
	    FUNC7(sk, skb, NETLINK_DIAG_MEMINFO))
		goto out_nlmsg_trim;

	if ((req->ndiag_show & NDIAG_SHOW_FLAGS) &&
	    FUNC6(sk, skb))
		goto out_nlmsg_trim;

	FUNC3(skb, nlh);
	return 0;

out_nlmsg_trim:
	FUNC1(skb, nlh);
	return -EMSGSIZE;
}