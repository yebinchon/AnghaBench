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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct net {int dummy; } ;
struct inet_request_sock {int /*<<< orphan*/  ireq_opt; } ;
struct TYPE_2__ {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_request_sock* FUNC1 (struct request_sock*) ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC6 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC7 (struct net*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct request_sock *req,
			    const struct sock *sk_listener,
			    struct sk_buff *skb)
{
	struct inet_request_sock *ireq = FUNC1(req);
	struct net *net = FUNC6(sk_listener);

	FUNC5(FUNC3(req), FUNC2(skb)->daddr);
	FUNC4(FUNC3(req), FUNC2(skb)->saddr);
	FUNC0(ireq->ireq_opt, FUNC7(net, skb));
}