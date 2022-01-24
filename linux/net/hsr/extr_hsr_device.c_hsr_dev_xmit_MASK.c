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
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct hsr_priv {int dummy; } ;
struct hsr_port {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSR_PT_MASTER ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct hsr_port*) ; 
 struct hsr_port* FUNC1 (struct hsr_priv*,int /*<<< orphan*/ ) ; 
 struct hsr_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct net_device *dev)
{
	struct hsr_priv *hsr = FUNC2(dev);
	struct hsr_port *master;

	master = FUNC1(hsr, HSR_PT_MASTER);
	skb->dev = master->dev;
	FUNC0(skb, master);
	return NETDEV_TX_OK;
}