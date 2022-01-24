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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct llc_xid_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lsap; } ;
struct llc_sap {TYPE_1__ laddr; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  LLC_PDU_RSP ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_U ; 
 int /*<<< orphan*/  LLC_XID_NULL_CLASS_2 ; 
 int FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct llc_sap *sap, struct sk_buff *skb)
{
	u8 mac_da[ETH_ALEN], mac_sa[ETH_ALEN], dsap;
	int rc = 1;
	struct sk_buff *nskb;

	FUNC5(skb, mac_da);
	FUNC4(skb, mac_sa);
	FUNC6(skb, &dsap);
	nskb = FUNC2(NULL, skb->dev, LLC_PDU_TYPE_U,
			       sizeof(struct llc_xid_info));
	if (!nskb)
		goto out;
	FUNC7(nskb, LLC_PDU_TYPE_U, sap->laddr.lsap, dsap,
			    LLC_PDU_RSP);
	FUNC8(nskb, LLC_XID_NULL_CLASS_2, 0);
	rc = FUNC3(nskb, mac_sa, mac_da);
	if (FUNC1(!rc))
		rc = FUNC0(nskb);
out:
	return rc;
}