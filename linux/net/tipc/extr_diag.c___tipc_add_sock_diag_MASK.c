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
struct tipc_sock_diag_req {int /*<<< orphan*/  tidiag_states; } ;
struct tipc_sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/  nlh; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  NLM_F_MULTI ; 
 int /*<<< orphan*/  SOCK_DIAG_BY_FAMILY ; 
 int /*<<< orphan*/  __tipc_diag_gen_cookie ; 
 struct tipc_sock_diag_req* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC2 (struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sk_buff*,struct netlink_callback*,struct tipc_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
				struct netlink_callback *cb,
				struct tipc_sock *tsk)
{
	struct tipc_sock_diag_req *req = FUNC0(cb->nlh);
	struct nlmsghdr *nlh;
	int err;

	nlh = FUNC2(skb, cb, SOCK_DIAG_BY_FAMILY, 0,
			       NLM_F_MULTI);
	if (!nlh)
		return -EMSGSIZE;

	err = FUNC3(skb, cb, tsk, req->tidiag_states,
				     __tipc_diag_gen_cookie);
	if (err)
		return err;

	FUNC1(skb, nlh);
	return 0;
}