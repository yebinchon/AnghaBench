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
struct nlattr {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/  nlh; } ;
struct inet_diag_req_v2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INET_DIAG_REQ_BYTECODE ; 
 int FUNC0 (struct sk_buff*,struct netlink_callback*,int /*<<< orphan*/ ,struct nlattr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct netlink_callback *cb)
{
	int hdrlen = sizeof(struct inet_diag_req_v2);
	struct nlattr *bc = NULL;

	if (FUNC1(cb->nlh, hdrlen))
		bc = FUNC3(cb->nlh, hdrlen, INET_DIAG_REQ_BYTECODE);

	return FUNC0(skb, cb, FUNC2(cb->nlh), bc);
}