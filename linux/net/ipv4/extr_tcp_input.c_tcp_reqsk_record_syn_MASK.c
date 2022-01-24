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
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {scalar_t__* saved_syn; } ;
struct TYPE_2__ {scalar_t__ save_syn; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff const*) ; 
 scalar_t__ FUNC3 (struct sk_buff const*) ; 
 scalar_t__ FUNC4 (struct sk_buff const*) ; 
 TYPE_1__* FUNC5 (struct sock const*) ; 

__attribute__((used)) static void FUNC6(const struct sock *sk,
				 struct request_sock *req,
				 const struct sk_buff *skb)
{
	if (FUNC5(sk)->save_syn) {
		u32 len = FUNC3(skb) + FUNC4(skb);
		u32 *copy;

		copy = FUNC0(len + sizeof(u32), GFP_ATOMIC);
		if (copy) {
			copy[0] = len;
			FUNC1(&copy[1], FUNC2(skb), len);
			req->saved_syn = copy;
		}
	}
}