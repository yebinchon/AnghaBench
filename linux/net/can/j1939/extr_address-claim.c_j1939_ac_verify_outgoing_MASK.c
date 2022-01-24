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
struct sk_buff {int len; } ;
struct TYPE_2__ {scalar_t__ src_name; scalar_t__ sa; scalar_t__ da; scalar_t__ dst_name; } ;
struct j1939_sk_buff_cb {TYPE_1__ addr; } ;
struct j1939_priv {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int EPROTO ; 
 scalar_t__ J1939_NO_ADDR ; 
 struct j1939_sk_buff_cb* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(struct j1939_priv *priv,
				    struct sk_buff *skb)
{
	struct j1939_sk_buff_cb *skcb = FUNC0(skb);

	if (skb->len != 8) {
		FUNC2(priv->ndev, "tx address claim with dlc %i\n",
			      skb->len);
		return -EPROTO;
	}

	if (skcb->addr.src_name != FUNC1(skb)) {
		FUNC2(priv->ndev, "tx address claim with different name\n");
		return -EPROTO;
	}

	if (skcb->addr.sa == J1939_NO_ADDR) {
		FUNC2(priv->ndev, "tx address claim with broadcast sa\n");
		return -EPROTO;
	}

	/* ac must always be a broadcast */
	if (skcb->addr.dst_name || skcb->addr.da != J1939_NO_ADDR) {
		FUNC2(priv->ndev, "tx address claim with dest, not broadcast\n");
		return -EPROTO;
	}
	return 0;
}