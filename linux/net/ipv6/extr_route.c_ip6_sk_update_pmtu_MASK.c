#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int sk_bound_dev_if; int /*<<< orphan*/  sk_v6_daddr; int /*<<< orphan*/  sk_uid; int /*<<< orphan*/  sk_mark; } ;
struct sk_buff {scalar_t__ dev; } ;
struct dst_entry {TYPE_1__* ops; int /*<<< orphan*/  obsolete; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  dst_cookie; } ;
struct TYPE_3__ {scalar_t__ (* check ) (struct dst_entry*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct dst_entry* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (struct dst_entry*,int /*<<< orphan*/ ) ; 

void FUNC11(struct sk_buff *skb, struct sock *sk, __be32 mtu)
{
	int oif = sk->sk_bound_dev_if;
	struct dst_entry *dst;

	if (!oif && skb->dev)
		oif = FUNC7(skb->dev);

	FUNC5(skb, FUNC8(sk), mtu, oif, sk->sk_mark, sk->sk_uid);

	dst = FUNC0(sk);
	if (!dst || !dst->obsolete ||
	    dst->ops->check(dst, FUNC3(sk)->dst_cookie))
		return;

	FUNC1(sk);
	if (!FUNC9(sk) && !FUNC6(&sk->sk_v6_daddr))
		FUNC4(sk, false);
	FUNC2(sk);
}