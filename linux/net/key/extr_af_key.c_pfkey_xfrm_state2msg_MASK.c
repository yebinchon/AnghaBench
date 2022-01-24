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
struct xfrm_state {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (struct xfrm_state const*,int,int) ; 

__attribute__((used)) static inline struct sk_buff *FUNC1(const struct xfrm_state *x)
{
	struct sk_buff *skb;

	skb = FUNC0(x, 1, 3);

	return skb;
}