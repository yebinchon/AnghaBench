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
struct llc_pdu_un {int /*<<< orphan*/  dsap; } ;

/* Variables and functions */
 scalar_t__ LLC_1_PDU_CMD_TEST ; 
 scalar_t__ FUNC0 (struct llc_pdu_un*) ; 
 scalar_t__ FUNC1 (struct llc_pdu_un*) ; 
 scalar_t__ FUNC2 (struct llc_pdu_un*) ; 
 struct llc_pdu_un* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb)
{
	struct llc_pdu_un *pdu = FUNC3(skb);

	return FUNC0(pdu) &&			/* command PDU */
	       FUNC1(pdu) &&		/* U type PDU */
	       FUNC2(pdu) == LLC_1_PDU_CMD_TEST &&
	       !pdu->dsap ? 0 : 1;			/* NULL DSAP */
}