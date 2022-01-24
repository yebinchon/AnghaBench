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
struct flowi4 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flowi4*,struct sock const*) ; 
 int /*<<< orphan*/  FUNC1 (struct flowi4*,struct sk_buff const*,struct sock const*) ; 

__attribute__((used)) static void FUNC2(struct flowi4 *fl4, const struct sock *sk,
				 const struct sk_buff *skb)
{
	if (skb)
		FUNC1(fl4, skb, sk);
	else
		FUNC0(fl4, sk);
}