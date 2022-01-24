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
struct udphdr {scalar_t__ check; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  ip6_compute_pseudo ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct sock *sk, struct sk_buff *skb,
				struct udphdr *uh)
{
	int ret;

	if (FUNC1(sk) && uh->check && !FUNC0(sk))
		FUNC2(skb, IPPROTO_UDP, ip6_compute_pseudo);

	ret = FUNC3(sk, skb);

	/* a return value > 0 means to resubmit the input */
	if (ret > 0)
		return ret;
	return 0;
}