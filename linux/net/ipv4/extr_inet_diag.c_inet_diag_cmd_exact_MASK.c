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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct inet_diag_req_v2 {int /*<<< orphan*/  sdiag_protocol; } ;
struct inet_diag_handler {int (* dump_one ) (struct sk_buff*,struct nlmsghdr const*,struct inet_diag_req_v2 const*) ;int (* destroy ) (struct sk_buff*,struct inet_diag_req_v2 const*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct inet_diag_handler const*) ; 
 int FUNC1 (struct inet_diag_handler const*) ; 
 int SOCK_DESTROY ; 
 int SOCK_DIAG_BY_FAMILY ; 
 struct inet_diag_handler* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inet_diag_handler const*) ; 
 int FUNC4 (struct sk_buff*,struct nlmsghdr const*,struct inet_diag_req_v2 const*) ; 
 int FUNC5 (struct sk_buff*,struct inet_diag_req_v2 const*) ; 

__attribute__((used)) static int FUNC6(int cmd, struct sk_buff *in_skb,
			       const struct nlmsghdr *nlh,
			       const struct inet_diag_req_v2 *req)
{
	const struct inet_diag_handler *handler;
	int err;

	handler = FUNC2(req->sdiag_protocol);
	if (FUNC0(handler))
		err = FUNC1(handler);
	else if (cmd == SOCK_DIAG_BY_FAMILY)
		err = handler->dump_one(in_skb, nlh, req);
	else if (cmd == SOCK_DESTROY && handler->destroy)
		err = handler->destroy(in_skb, req);
	else
		err = -EOPNOTSUPP;
	FUNC3(handler);

	return err;
}