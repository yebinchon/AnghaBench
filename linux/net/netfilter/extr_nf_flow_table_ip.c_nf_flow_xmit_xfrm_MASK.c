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
struct sk_buff {int dummy; } ;
struct nf_hook_state {int /*<<< orphan*/  sk; int /*<<< orphan*/  net; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 unsigned int NF_STOLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int FUNC3(struct sk_buff *skb,
				      const struct nf_hook_state *state,
				      struct dst_entry *dst)
{
	FUNC2(skb);
	FUNC1(skb, dst);
	FUNC0(state->net, state->sk, skb);
	return NF_STOLEN;
}