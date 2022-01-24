#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mac; int /*<<< orphan*/  lsap; } ;
struct llc_sock {TYPE_2__ daddr; TYPE_1__* dev; int /*<<< orphan*/  vR; int /*<<< orphan*/  vS; int /*<<< orphan*/  ack_pf; struct llc_sap* sap; } ;
struct TYPE_6__ {int /*<<< orphan*/  lsap; } ;
struct llc_sap {TYPE_3__ laddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LLC_PDU_RSP ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_I ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct llc_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct sock *sk,
					      struct sk_buff *skb)
{
	int rc;
	struct llc_sock *llc = FUNC6(sk);
	struct llc_sap *sap = llc->sap;

	FUNC4(skb, LLC_PDU_TYPE_I, sap->laddr.lsap,
			    llc->daddr.lsap, LLC_PDU_RSP);
	FUNC5(skb, llc->ack_pf, llc->vS, llc->vR);
	rc = FUNC3(skb, llc->dev->dev_addr, llc->daddr.mac);
	if (FUNC0(!rc)) {
		FUNC7(skb);
		FUNC2(sk, skb);
		FUNC1(sk, skb);
	}
	return rc;
}