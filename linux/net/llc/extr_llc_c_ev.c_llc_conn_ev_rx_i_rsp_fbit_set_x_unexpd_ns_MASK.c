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
typedef  scalar_t__ u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int dummy; } ;
struct TYPE_2__ {scalar_t__ vR; int /*<<< orphan*/  rw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct llc_pdu_sn const*) ; 
 scalar_t__ FUNC1 (struct llc_pdu_sn const*) ; 
 scalar_t__ FUNC2 (struct llc_pdu_sn const*) ; 
 struct llc_pdu_sn* FUNC3 (struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__ const,scalar_t__ const,int /*<<< orphan*/ ) ; 

int FUNC6(struct sock *sk,
					      struct sk_buff *skb)
{
	const struct llc_pdu_sn *pdu = FUNC3(skb);
	const u8 vr = FUNC4(sk)->vR;
	const u8 ns = FUNC0(pdu);

	return FUNC1(pdu) && FUNC2(pdu) && ns != vr &&
	       !FUNC5(ns, vr, FUNC4(sk)->rw) ? 0 : 1;
}