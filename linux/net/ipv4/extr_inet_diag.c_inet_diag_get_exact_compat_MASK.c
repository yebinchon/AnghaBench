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
struct nlmsghdr {int /*<<< orphan*/  nlmsg_type; } ;
struct inet_diag_req_v2 {int /*<<< orphan*/  id; int /*<<< orphan*/  idiag_states; int /*<<< orphan*/  idiag_ext; int /*<<< orphan*/  sdiag_protocol; int /*<<< orphan*/  sdiag_family; } ;
struct inet_diag_req {int /*<<< orphan*/  id; int /*<<< orphan*/  idiag_states; int /*<<< orphan*/  idiag_ext; int /*<<< orphan*/  idiag_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DIAG_BY_FAMILY ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*,struct nlmsghdr const*,struct inet_diag_req_v2*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct inet_diag_req* FUNC2 (struct nlmsghdr const*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *in_skb,
				      const struct nlmsghdr *nlh)
{
	struct inet_diag_req *rc = FUNC2(nlh);
	struct inet_diag_req_v2 req;

	req.sdiag_family = rc->idiag_family;
	req.sdiag_protocol = FUNC1(nlh->nlmsg_type);
	req.idiag_ext = rc->idiag_ext;
	req.idiag_states = rc->idiag_states;
	req.id = rc->id;

	return FUNC0(SOCK_DIAG_BY_FAMILY, in_skb, nlh, &req);
}