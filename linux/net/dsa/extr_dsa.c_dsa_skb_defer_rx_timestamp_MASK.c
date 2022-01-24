#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct dsa_switch {TYPE_2__* ops; } ;
struct dsa_slave_priv {TYPE_1__* dp; } ;
struct TYPE_4__ {int (* port_rxtstamp ) (struct dsa_switch*,int /*<<< orphan*/ ,struct sk_buff*,unsigned int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  index; struct dsa_switch* ds; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 unsigned int PTP_CLASS_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC2 (int (*) (struct dsa_switch*,int /*<<< orphan*/ ,struct sk_buff*,unsigned int)) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct dsa_switch*,int /*<<< orphan*/ ,struct sk_buff*,unsigned int) ; 

__attribute__((used)) static bool FUNC6(struct dsa_slave_priv *p,
				       struct sk_buff *skb)
{
	struct dsa_switch *ds = p->dp->ds;
	unsigned int type;

	if (FUNC4(skb) < ETH_HLEN)
		return false;

	FUNC1(skb, ETH_HLEN);

	type = FUNC3(skb);

	FUNC0(skb, ETH_HLEN);

	if (type == PTP_CLASS_NONE)
		return false;

	if (FUNC2(ds->ops->port_rxtstamp))
		return ds->ops->port_rxtstamp(ds, p->dp->index, skb, type);

	return false;
}