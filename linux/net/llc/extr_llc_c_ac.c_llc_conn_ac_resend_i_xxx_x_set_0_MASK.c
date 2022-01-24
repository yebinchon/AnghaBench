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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_pdu_sn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct llc_pdu_sn*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct llc_pdu_sn* FUNC2 (struct sk_buff*) ; 

int FUNC3(struct sock *sk, struct sk_buff *skb)
{
	struct llc_pdu_sn *pdu = FUNC2(skb);
	u8 nr = FUNC0(pdu);

	FUNC1(sk, nr, 0);
	return 0;
}