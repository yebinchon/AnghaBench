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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mac; int /*<<< orphan*/  lsap; } ;
struct llc_sock {TYPE_2__ daddr; TYPE_3__* dev; int /*<<< orphan*/  vR; int /*<<< orphan*/  vS; struct llc_sap* sap; int /*<<< orphan*/  rx_pdu_hdr; } ;
struct TYPE_4__ {int /*<<< orphan*/  lsap; } ;
struct llc_sap {TYPE_1__ laddr; } ;
struct llc_pdu_sn {int dummy; } ;
struct llc_frmr_info {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  INCORRECT ; 
 scalar_t__ FUNC0 (struct llc_pdu_sn*) ; 
 int /*<<< orphan*/  LLC_PDU_RSP ; 
 int /*<<< orphan*/  LLC_PDU_TYPE_U ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct sock*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct llc_pdu_sn*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct llc_pdu_sn* FUNC8 (struct sk_buff*) ; 
 struct llc_sock* FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct sock *sk, struct sk_buff *skb)
{
	u8 f_bit;
	int rc = -ENOBUFS;
	struct sk_buff *nskb;
	struct llc_pdu_sn *pdu = FUNC8(skb);
	struct llc_sock *llc = FUNC9(sk);

	llc->rx_pdu_hdr = *((u32 *)pdu);
	if (FUNC0(pdu))
		FUNC5(skb, &f_bit);
	else
		f_bit = 0;
	nskb = FUNC2(sk, llc->dev, LLC_PDU_TYPE_U,
			       sizeof(struct llc_frmr_info));
	if (nskb) {
		struct llc_sap *sap = llc->sap;

		FUNC6(nskb, LLC_PDU_TYPE_U, sap->laddr.lsap,
				    llc->daddr.lsap, LLC_PDU_RSP);
		FUNC7(nskb, pdu, f_bit, llc->vS,
					 llc->vR, INCORRECT);
		rc = FUNC4(nskb, llc->dev->dev_addr, llc->daddr.mac);
		if (FUNC10(rc))
			goto free;
		FUNC3(sk, nskb);
	}
out:
	return rc;
free:
	FUNC1(nskb);
	goto out;
}