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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct auditd_connection {int /*<<< orphan*/  portid; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int ECONNREFUSED ; 
 struct sock* FUNC0 (struct net*) ; 
 int /*<<< orphan*/  auditd_conn ; 
 int /*<<< orphan*/  FUNC1 (struct auditd_connection*) ; 
 struct net* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net*) ; 
 struct auditd_connection* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb)
{
	int rc;
	u32 portid;
	struct net *net;
	struct sock *sk;
	struct auditd_connection *ac;

	/* NOTE: we can't call netlink_unicast while in the RCU section so
	 *       take a reference to the network namespace and grab local
	 *       copies of the namespace, the sock, and the portid; the
	 *       namespace and sock aren't going to go away while we hold a
	 *       reference and if the portid does become invalid after the RCU
	 *       section netlink_unicast() should safely return an error */

	FUNC7();
	ac = FUNC6(auditd_conn);
	if (!ac) {
		FUNC8();
		FUNC3(skb);
		rc = -ECONNREFUSED;
		goto err;
	}
	net = FUNC2(ac->net);
	sk = FUNC0(net);
	portid = ac->portid;
	FUNC8();

	rc = FUNC4(sk, skb, portid, 0);
	FUNC5(net);
	if (rc < 0)
		goto err;

	return rc;

err:
	if (ac && rc == -ECONNREFUSED)
		FUNC1(ac);
	return rc;
}