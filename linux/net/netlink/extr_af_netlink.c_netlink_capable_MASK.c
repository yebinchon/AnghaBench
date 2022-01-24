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

/* Variables and functions */
 int /*<<< orphan*/  init_user_ns ; 
 int FUNC0 (struct sk_buff const*,int /*<<< orphan*/ *,int) ; 

bool FUNC1(const struct sk_buff *skb, int cap)
{
	return FUNC0(skb, &init_user_ns, cap);
}