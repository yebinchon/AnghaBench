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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct audit_netlink_list {int /*<<< orphan*/  net; int /*<<< orphan*/  portid; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sock* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_netlink_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(void *_dest)
{
	struct audit_netlink_list *dest = _dest;
	struct sk_buff *skb;
	struct sock *sk = FUNC3(dest->net);

	/* wait for parent to finish and send an ACK */
	FUNC1();
	FUNC2();

	while ((skb = FUNC0(&dest->q)) != NULL)
		FUNC5(sk, skb, dest->portid, 0);

	FUNC6(dest->net);
	FUNC4(dest);

	return 0;
}