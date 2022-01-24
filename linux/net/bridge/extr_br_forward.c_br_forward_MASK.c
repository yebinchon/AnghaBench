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
struct net_bridge_port {int /*<<< orphan*/  backup_port; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_bridge_port const*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_bridge_port const*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct net_bridge_port* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct net_bridge_port const*,struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(const struct net_bridge_port *to,
		struct sk_buff *skb, bool local_rcv, bool local_orig)
{
	if (FUNC7(!to))
		goto out;

	/* redirect to backup link if the destination port is down */
	if (FUNC4(to->backup_port) && !FUNC3(to->dev)) {
		struct net_bridge_port *backup_port;

		backup_port = FUNC5(to->backup_port);
		if (FUNC7(!backup_port))
			goto out;
		to = backup_port;
	}

	if (FUNC6(to, skb)) {
		if (local_rcv)
			FUNC1(to, skb, local_orig);
		else
			FUNC0(to, skb, local_orig);
		return;
	}

out:
	if (!local_rcv)
		FUNC2(skb);
}