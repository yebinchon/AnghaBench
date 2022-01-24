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
struct nf_hook_state {int dummy; } ;

/* Variables and functions */
 unsigned int NF_ACCEPT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 

__attribute__((used)) static unsigned int FUNC1(void *priv,
			struct sk_buff *skb,
			const struct nf_hook_state *state)
{
	FUNC0(skb);
	return NF_ACCEPT;
}