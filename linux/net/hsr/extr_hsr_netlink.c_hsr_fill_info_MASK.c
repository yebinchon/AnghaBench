#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct hsr_priv {int /*<<< orphan*/  sequence_nr; int /*<<< orphan*/  sup_multicast_addr; } ;
struct hsr_port {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HSR_PT_SLAVE_A ; 
 int /*<<< orphan*/  HSR_PT_SLAVE_B ; 
 int /*<<< orphan*/  IFLA_HSR_SEQ_NR ; 
 int /*<<< orphan*/  IFLA_HSR_SLAVE1 ; 
 int /*<<< orphan*/  IFLA_HSR_SLAVE2 ; 
 int /*<<< orphan*/  IFLA_HSR_SUPERVISION_ADDR ; 
 struct hsr_port* FUNC0 (struct hsr_priv*,int /*<<< orphan*/ ) ; 
 struct hsr_priv* FUNC1 (struct net_device const*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, const struct net_device *dev)
{
	struct hsr_priv *hsr;
	struct hsr_port *port;
	int res;

	hsr = FUNC1(dev);

	res = 0;

	FUNC5();
	port = FUNC0(hsr, HSR_PT_SLAVE_A);
	if (port)
		res = FUNC4(skb, IFLA_HSR_SLAVE1, port->dev->ifindex);
	FUNC6();
	if (res)
		goto nla_put_failure;

	FUNC5();
	port = FUNC0(hsr, HSR_PT_SLAVE_B);
	if (port)
		res = FUNC4(skb, IFLA_HSR_SLAVE2, port->dev->ifindex);
	FUNC6();
	if (res)
		goto nla_put_failure;

	if (FUNC2(skb, IFLA_HSR_SUPERVISION_ADDR, ETH_ALEN,
		    hsr->sup_multicast_addr) ||
	    FUNC3(skb, IFLA_HSR_SEQ_NR, hsr->sequence_nr))
		goto nla_put_failure;

	return 0;

nla_put_failure:
	return -EMSGSIZE;
}