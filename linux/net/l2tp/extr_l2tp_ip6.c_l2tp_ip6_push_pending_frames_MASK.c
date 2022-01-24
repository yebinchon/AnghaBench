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
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int FUNC0 (struct sock*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct sock *sk)
{
	struct sk_buff *skb;
	__be32 *transhdr = NULL;
	int err = 0;

	skb = FUNC1(&sk->sk_write_queue);
	if (skb == NULL)
		goto out;

	transhdr = (__be32 *)FUNC2(skb);
	*transhdr = 0;

	err = FUNC0(sk);

out:
	return err;
}