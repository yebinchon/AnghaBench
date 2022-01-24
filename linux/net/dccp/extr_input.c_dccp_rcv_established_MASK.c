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
struct dccp_hdr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sock*,struct sk_buff*,struct dccp_hdr const*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sock*,int /*<<< orphan*/ *,struct sk_buff*) ; 

int FUNC6(struct sock *sk, struct sk_buff *skb,
			 const struct dccp_hdr *dh, const unsigned int len)
{
	if (FUNC2(sk, skb))
		goto discard;

	if (FUNC5(sk, NULL, skb))
		return 1;

	FUNC4(sk, skb);
	FUNC3(sk, skb);

	return FUNC0(sk, skb, dh, len);
discard:
	FUNC1(skb);
	return 0;
}