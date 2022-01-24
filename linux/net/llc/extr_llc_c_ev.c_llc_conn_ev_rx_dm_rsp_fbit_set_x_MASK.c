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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_un {int dummy; } ;

/* Variables and functions */
 scalar_t__ LLC_2_PDU_RSP_DM ; 
 scalar_t__ FUNC0 (struct llc_pdu_un const*) ; 
 scalar_t__ FUNC1 (struct llc_pdu_un const*) ; 
 scalar_t__ FUNC2 (struct llc_pdu_un const*) ; 
 struct llc_pdu_un* FUNC3 (struct sk_buff*) ; 

int FUNC4(struct sock *sk, struct sk_buff *skb)
{
	const struct llc_pdu_un *pdu = FUNC3(skb);

	return FUNC0(pdu) && FUNC1(pdu) &&
	       FUNC2(pdu) == LLC_2_PDU_RSP_DM ? 0 : 1;
}