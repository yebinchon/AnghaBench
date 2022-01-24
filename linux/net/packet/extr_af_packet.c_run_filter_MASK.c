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
struct sock {int /*<<< orphan*/  sk_filter; } ;
struct sk_filter {int /*<<< orphan*/  prog; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 struct sk_filter* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static unsigned int FUNC4(struct sk_buff *skb,
			       const struct sock *sk,
			       unsigned int res)
{
	struct sk_filter *filter;

	FUNC2();
	filter = FUNC1(sk->sk_filter);
	if (filter != NULL)
		res = FUNC0(filter->prog, skb);
	FUNC3();

	return res;
}