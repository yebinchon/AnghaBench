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
struct llc_sap_state_ev {int /*<<< orphan*/  ind_cfm_flag; int /*<<< orphan*/  prim; } ;
struct llc_sap {int dummy; } ;
struct llc_pdu_un {int dummy; } ;

/* Variables and functions */
#define  LLC_1_PDU_CMD_TEST 130 
#define  LLC_1_PDU_CMD_UI 129 
#define  LLC_1_PDU_CMD_XID 128 
 int /*<<< orphan*/  LLC_DATAUNIT_PRIM ; 
 int /*<<< orphan*/  LLC_IND ; 
 int /*<<< orphan*/  LLC_TEST_PRIM ; 
 int FUNC0 (struct llc_pdu_un*) ; 
 int /*<<< orphan*/  LLC_XID_PRIM ; 
 struct llc_pdu_un* FUNC1 (struct sk_buff*) ; 
 struct llc_sap_state_ev* FUNC2 (struct sk_buff*) ; 

void FUNC3(struct llc_sap *sap, struct sk_buff *skb)
{
	struct llc_sap_state_ev *ev = FUNC2(skb);
	struct llc_pdu_un *pdu = FUNC1(skb);

	switch (FUNC0(pdu)) {
	case LLC_1_PDU_CMD_TEST:
		ev->prim = LLC_TEST_PRIM;	break;
	case LLC_1_PDU_CMD_XID:
		ev->prim = LLC_XID_PRIM;	break;
	case LLC_1_PDU_CMD_UI:
		ev->prim = LLC_DATAUNIT_PRIM;	break;
	}
	ev->ind_cfm_flag = LLC_IND;
}