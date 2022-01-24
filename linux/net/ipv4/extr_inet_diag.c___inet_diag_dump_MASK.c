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
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct inet_diag_req_v2 {int /*<<< orphan*/  sdiag_protocol; } ;
struct inet_diag_handler {int /*<<< orphan*/  (* dump ) (struct sk_buff*,struct netlink_callback*,struct inet_diag_req_v2 const*,struct nlattr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet_diag_handler const*) ; 
 int FUNC1 (struct inet_diag_handler const*) ; 
 struct inet_diag_handler* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inet_diag_handler const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct netlink_callback*,struct inet_diag_req_v2 const*,struct nlattr*) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct netlink_callback *cb,
			    const struct inet_diag_req_v2 *r,
			    struct nlattr *bc)
{
	const struct inet_diag_handler *handler;
	int err = 0;

	handler = FUNC2(r->sdiag_protocol);
	if (!FUNC0(handler))
		handler->dump(skb, cb, r, bc);
	else
		err = FUNC1(handler);
	FUNC3(handler);

	return err ? : skb->len;
}