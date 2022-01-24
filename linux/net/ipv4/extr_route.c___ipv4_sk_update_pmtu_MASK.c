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
typedef  int /*<<< orphan*/  u32 ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  mark; scalar_t__ data; } ;
struct rtable {int dummy; } ;
struct iphdr {int dummy; } ;
struct flowi4 {scalar_t__ flowi4_mark; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct flowi4*,struct sock*,struct iphdr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtable* FUNC3 (int /*<<< orphan*/ ,struct flowi4*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtable*,struct flowi4*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sk_buff *skb, struct sock *sk, u32 mtu)
{
	const struct iphdr *iph = (const struct iphdr *) skb->data;
	struct flowi4 fl4;
	struct rtable *rt;

	FUNC2(FUNC6(sk), &fl4, sk, iph, 0, 0, 0, 0, 0);

	if (!fl4.flowi4_mark)
		fl4.flowi4_mark = FUNC0(FUNC6(sk), skb->mark);

	rt = FUNC3(FUNC6(sk), &fl4);
	if (!FUNC1(rt)) {
		FUNC4(rt, &fl4, mtu);
		FUNC5(rt);
	}
}