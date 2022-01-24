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
struct sock {int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {int dummy; } ;
struct atm_vcc {int /*<<< orphan*/  vci; } ;
struct TYPE_2__ {int /*<<< orphan*/  acct_truesize; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sock* FUNC5 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static void FUNC8(struct atm_vcc *vcc, struct sk_buff *skb)
{
	struct sock *sk = FUNC5(vcc);

	FUNC3("(%d) %d -= %d\n",
		 vcc->vci, FUNC6(sk), FUNC0(skb)->acct_truesize);
	FUNC1(FUNC4(FUNC0(skb)->acct_truesize, &sk->sk_wmem_alloc));
	FUNC2(skb);
	sk->sk_write_space(sk);
}