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
struct xfrm_policy {scalar_t__ security; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,struct sk_buff*) ; 

__attribute__((used)) static inline int FUNC1(struct xfrm_policy *xp, struct sk_buff *skb)
{
	if (xp->security)
		return FUNC0(xp->security, skb);
	return 0;
}