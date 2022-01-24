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
struct llc_sap {int dummy; } ;
struct llc_addr {int /*<<< orphan*/  mac; int /*<<< orphan*/  lsap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sock* FUNC2 (struct llc_sap*,struct llc_addr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct llc_sap*,struct llc_addr*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct llc_sap*,struct sk_buff*,struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

void FUNC8(struct llc_sap *sap, struct sk_buff *skb)
{
	struct llc_addr laddr;

	FUNC3(skb, laddr.mac);
	FUNC4(skb, &laddr.lsap);

	if (FUNC0(laddr.mac)) {
		FUNC5(sap, &laddr, skb);
		FUNC1(skb);
	} else {
		struct sock *sk = FUNC2(sap, &laddr);
		if (sk) {
			FUNC6(sap, skb, sk);
			FUNC7(sk);
		} else
			FUNC1(skb);
	}
}