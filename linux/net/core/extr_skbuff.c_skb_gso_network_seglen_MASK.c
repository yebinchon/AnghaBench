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
 unsigned int FUNC0 (struct sk_buff const*) ; 
 unsigned int FUNC1 (struct sk_buff const*) ; 
 unsigned int FUNC2 (struct sk_buff const*) ; 

__attribute__((used)) static unsigned int FUNC3(const struct sk_buff *skb)
{
	unsigned int hdr_len = FUNC2(skb) -
			       FUNC1(skb);

	return hdr_len + FUNC0(skb);
}