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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mac; int /*<<< orphan*/  lsap; } ;
struct llc_sock {TYPE_2__ daddr; TYPE_3__* dev; struct llc_sap* sap; } ;
struct TYPE_4__ {int /*<<< orphan*/  lsap; } ;
struct llc_sap {TYPE_1__ laddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  LLC_PDU_RSP ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_U ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct sock*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_buff*) ; 
 int FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct llc_sock* FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct sock *sk, struct sk_buff *skb)
{
	int rc = -ENOBUFS;
	struct llc_sock *llc = FUNC7(sk);
	struct sk_buff *nskb = FUNC1(sk, llc->dev, LLC_PDU_TYPE_U, 0);

	if (nskb) {
		struct llc_sap *sap = llc->sap;
		u8 f_bit;

		FUNC4(skb, &f_bit);
		FUNC5(nskb, LLC_PDU_TYPE_U, sap->laddr.lsap,
				    llc->daddr.lsap, LLC_PDU_RSP);
		FUNC6(nskb, f_bit);
		rc = FUNC3(nskb, llc->dev->dev_addr, llc->daddr.mac);
		if (FUNC8(rc))
			goto free;
		FUNC2(sk, nskb);
	}
out:
	return rc;
free:
	FUNC0(nskb);
	goto out;
}