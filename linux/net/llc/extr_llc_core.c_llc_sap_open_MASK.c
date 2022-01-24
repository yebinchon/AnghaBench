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
struct TYPE_2__ {unsigned char lsap; } ;
struct llc_sap {int (* rcv_func ) (struct sk_buff*,struct net_device*,struct packet_type*,struct net_device*) ;int /*<<< orphan*/  node; TYPE_1__ laddr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct llc_sap* FUNC2 () ; 
 int /*<<< orphan*/  llc_sap_list ; 
 int /*<<< orphan*/  llc_sap_list_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct llc_sap *FUNC5(unsigned char lsap,
			     int (*func)(struct sk_buff *skb,
					 struct net_device *dev,
					 struct packet_type *pt,
					 struct net_device *orig_dev))
{
	struct llc_sap *sap = NULL;

	FUNC3(&llc_sap_list_lock);
	if (FUNC0(lsap)) /* SAP already exists */
		goto out;
	sap = FUNC2();
	if (!sap)
		goto out;
	sap->laddr.lsap = lsap;
	sap->rcv_func	= func;
	FUNC1(&sap->node, &llc_sap_list);
out:
	FUNC4(&llc_sap_list_lock);
	return sap;
}