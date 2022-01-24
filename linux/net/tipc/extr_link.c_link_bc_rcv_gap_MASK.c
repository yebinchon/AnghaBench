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
typedef  scalar_t__ u16 ;
struct tipc_link {scalar_t__ rcv_nxt; scalar_t__ snd_nxt; int /*<<< orphan*/  deferdq; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC3(struct tipc_link *l)
{
	struct sk_buff *skb = FUNC2(&l->deferdq);
	u16 gap = 0;

	if (FUNC1(l->snd_nxt, l->rcv_nxt))
		gap = l->snd_nxt - l->rcv_nxt;
	if (skb)
		gap = FUNC0(skb) - l->rcv_nxt;
	return gap;
}